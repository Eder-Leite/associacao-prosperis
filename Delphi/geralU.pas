unit geralU;

interface

uses
  Ora, Forms, SysUtils, Windows, ExtCtrls, ComCtrls, Buttons, StdCtrls, DbCtrls,
  dialogs, Mask, Printers, RDprint;

type
  TGeral = class
  public
    vQuery: TOraQuery;
    vPrint: TRDprint;
    procedure pCriarQuery;
    procedure pApagarQuery;
    procedure pIniciaTransacao;
    procedure pAplicaTransacao;
    procedure pCancelaTransacao;
    procedure pBloqueiaAltF4(parametro: TForm);
    procedure pIniciaTodosOsPageControl(paFormulario: TForm);
    procedure pControlaBotoes(paAcao: string; paFormulario: TForm; paPanel: TPanel; paPageControl: TPageControl; paGroupBox: TGroupBox);
    procedure pValidaCampos(paFormulario: TForm; paGroupBox: TGroupBox);
    procedure pExcluirRegistro(paTabela, paCodigo, paPergunta: string);
    procedure pBloqueioPorNiveis(paFormulario: TForm; paNivel: Integer; paAcao: Boolean);
    procedure pFecharFormulario;
    procedure pPrint(paAcao, paTipo: string);
    procedure pValidaUsuario(paUsuario, paSenha: string);
    function fCodigo(paSequencia: string): Integer;
    function fValidaData(paEdit: TMaskEdit; paTipo: string): string;
    function fReplicaCaracter(paReplicado: string; paQtde: Integer): string;
    function fPermissao(paTipo, paPrograma: string): Boolean;
    function fUsuario: string;
  end;

implementation

uses
  prosperisFrmU, loginFrmU;

{ TGeral }

function TGeral.fCodigo(paSequencia: string): Integer;
var
  vConsulta: string;
const
  cSequencia: string = 'SELECT :SEQUENCIA.NEXTVAL CODIGO FROM DUAL';
begin

  vConsulta := StringReplace(cSequencia, ':SEQUENCIA', paSequencia, [rfReplaceAll]);

  pCriarQuery;

  with vQuery do
  begin

    Close;
    SQL.Text := vConsulta;
    Open;
    Result := vQuery.FieldByName('CODIGO').Value;
    Close;

  end;

  pApagarQuery;

end;

function TGeral.fUsuario: string;
begin
  Result := StringReplace(prosperisFrm.lbl1.Caption, 'Usuario: ', '', [rfReplaceAll]);
end;

function TGeral.fPermissao(paTipo, paPrograma: string): Boolean;
var
  vCodigo: string;
  vAdmin: string;
  vSql: string;

  procedure piBuscaUsuario;
  begin
    pCriarQuery;

    vSql := ' SELECT A.NCODIUSUAR CODIGO, A.CADMIUSUAR ADMIN' + ' FROM SEGUSUAR A' + ' WHERE A.CLOGIUSUAR = ' + #39 + fUsuario + #39;

    with vQuery do
    begin
      SQL.Text := vSql;
      Close;
      Open;
      vCodigo := FieldByName('CODIGO').AsString;
      vAdmin := FieldByName('ADMIN').AsString;
      Close;
    end;

    pApagarQuery;
  end;

  function fiValidaSistema: Boolean;
  begin
    pCriarQuery;

    vSql := ' SELECT CASE' + ' WHEN COUNT(*) > 0 THEN ' + #39 + 'S' + #39 + ' ELSE ' + #39 + 'N' + #39 + ' END RESULTADO' + ' FROM SEGITPER B, SEGPERFI C, SEGSISTE D' + ' WHERE B.NCODIPERFI = C.NCODIPERFI' + ' AND B.NCODISISTE = D.NCODISISTE' + ' AND B.NCODIPERFI IN' + ' (SELECT A.NCODIPERFI FROM SEGPERUS A WHERE A.NCODIUSUAR = ' + vCodigo + ')' + ' AND C.CSTATPERFI = ' + #39 + 'A' + #39 + ' AND D.CSTATSISTE = ' + #39 + 'A' + #39 + ' AND D.CDESCSISTE = ' + #39 + paPrograma + #39;

    with vQuery do
    begin
      SQL.Text := vSql;
      Close;
      Open;
      if FieldByName('RESULTADO').AsString = 'S' then
        Result := True
      else
        Result := False;
      Close;
    end;

    pApagarQuery;
  end;

  function fiValidaTela: Boolean;
  begin
    pCriarQuery;

    vSql := ' SELECT CASE' + ' WHEN COUNT(*) > 0 THEN ' + #39 + 'S' + #39 + ' ELSE ' + #39 + 'N' + #39 + ' END RESULTADO' + ' FROM SEGITPER B, SEGPERFI C, SEGSISTE D, SEGTELSI E' + ' WHERE B.NCODIPERFI = C.NCODIPERFI' + ' AND B.NCODISISTE = D.NCODISISTE' + ' AND B.NCODITELSI = E.NCODITELSI' + ' AND B.NCODIPERFI IN' + ' (SELECT A.NCODIPERFI FROM SEGPERUS A WHERE A.NCODIUSUAR = ' + vCodigo + ')' + ' AND C.CSTATPERFI = ' + #39 + 'A' + #39 + ' AND D.CSTATSISTE = ' + #39 + 'A' + #39 + ' AND E.CSTATTELSI = ' + #39 + 'A' + #39 + ' AND E.CDESCTELSI = ' + #39 + paPrograma + #39;

    with vQuery do
    begin
      SQL.Text := vSql;
      Close;
      Open;
      if FieldByName('RESULTADO').AsString = 'S' then
        Result := True
      else
        Result := False;
      Close;
    end;

    pApagarQuery;
  end;

begin

  piBuscaUsuario;

  if vAdmin = 'S' then
    Result := True
  else if paTipo = 'S' then
    Result := fiValidaSistema
  else
    Result := fiValidaTela;

  if Result = False then
    if paTipo = 'S' then
      Application.MessageBox('Este usuario não possui permissão para acessar esse sistema!', 'Atenção!', MB_OK + MB_ICONERROR)
    else
      Application.MessageBox('Este usuario não possui permissão para acessar essa tela!', 'Atenção!', MB_OK + MB_ICONERROR)

end;

function TGeral.fReplicaCaracter(paReplicado: string; paQtde: Integer): string;
var
  vContador: Integer;
begin

  Result := '';

  for vContador := 1 to paQtde do
  begin
    Result := Result + paReplicado;
  end;

end;

function TGeral.fValidaData(paEdit: TMaskEdit; paTipo: string): string;
begin

  try

    if paTipo = 'D' then
      Result := DateToStr(StrToDate(paEdit.Text));

    if paTipo = 'T' then
      Result := DateTimeToStr(StrToDateTime(paEdit.Text))

  except

    Application.MessageBox('Preencha o campo de data corretamente!', 'Atencao', MB_OK + MB_ICONWARNING);
    paEdit.SetFocus;

  end;

end;

procedure TGeral.pApagarQuery;
begin
  if Assigned(vQuery) then
  begin
    FreeAndNil(vQuery);
  end;
end;

procedure TGeral.pAplicaTransacao;
begin
  prosperisFrm.session.Commit;
end;

procedure TGeral.pBloqueiaAltF4(parametro: TForm);
begin
  RegisterHotKey(parametro.Handle, 2, MOD_ALT, VK_F4);
end;

procedure TGeral.pBloqueioPorNiveis(paFormulario: TForm; paNivel: Integer; paAcao: Boolean);
var
  vContador: Integer;
begin

  for vContador := 0 to paFormulario.ComponentCount - 1 do
  begin

    if paFormulario.Components[vContador] is TPanel then
      if TPanel(paFormulario.Components[vContador]).Tag = paNivel then
        TPanel(paFormulario.Components[vContador]).Enabled := paAcao;

    if paFormulario.Components[vContador] is TGroupBox then
      if TGroupBox(paFormulario.Components[vContador]).Tag = paNivel then
        TGroupBox(paFormulario.Components[vContador]).Enabled := paAcao;

  end;

end;

procedure TGeral.pCancelaTransacao;
begin
  prosperisFrm.session.Rollback;
end;

procedure TGeral.pControlaBotoes(paAcao: string; paFormulario: TForm; paPanel: TPanel; paPageControl: TPageControl; paGroupBox: TGroupBox);
var
  vContador: Integer;

  procedure piSetFocus;
  var
    vContador: Integer;
  begin

    for vContador := 0 to paFormulario.ComponentCount - 1 do
    begin

      if paFormulario.Components[vContador] is TDBEdit then
        if TDBEdit(paFormulario.Components[vContador]).Parent.Name = paGroupBox.Name then
          if TDBEdit(paFormulario.Components[vContador]).Tag = 2 then
            TDBEdit(paFormulario.Components[vContador]).SetFocus;

      if paFormulario.Components[vContador] is TDBLookupListBox then
        if TDBLookupListBox(paFormulario.Components[vContador]).Parent.Name = paGroupBox.Name then
          if TDBLookupListBox(paFormulario.Components[vContador]).Tag = 2 then
            TDBLookupListBox(paFormulario.Components[vContador]).SetFocus;

    end;

  end;

begin

  for vContador := 0 to paFormulario.ComponentCount - 1 do
  begin
    if paFormulario.Components[vContador] is TSpeedButton then
    begin
      if TSpeedButton(paFormulario.Components[vContador]).Parent.Name = paPanel.Name then
      begin

        if paAcao = 'A' then
        begin
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 1 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 2 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 3 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 4 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 5 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 6 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 99 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;

          paPagecontrol.TabIndex := 1;

          piSetFocus;
        end;

        if paAcao = 'B' then
        begin
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 1 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 2 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 3 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 4 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 5 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 6 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 99 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := True;

          paPagecontrol.TabIndex := 0;
        end;

        if paAcao = 'C' then
        begin
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 1 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 2 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 3 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 4 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 5 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
          if TSpeedButton(paFormulario.Components[vContador]).Tag = 99 then
            TSpeedButton(paFormulario.Components[vContador]).Enabled := False;
        end

      end;

    end;
  end;

end;

procedure TGeral.pCriarQuery;
begin

  vQuery := TOraQuery.Create(nil);
  vQuery.Connection := prosperisFrm.session;

end;

procedure TGeral.pExcluirRegistro(paTabela, paCodigo, paPergunta: string);
const
  cDelete: string = 'DELETE :TABELA WHERE NCODI:EXTENSAO = :CODIGO';

  function fiDelete: string;
  begin

    Result := StringReplace(cDelete, ':TABELA', paTabela, [rfReplaceAll]);
    Result := StringReplace(Result, ':EXTENSAO', Copy(paTabela, 4, 5), [rfReplaceAll]);
    Result := StringReplace(Result, ':CODIGO', paCodigo, [rfReplaceAll]);

  end;

begin

  if Length(Trim(paCodigo)) <= 0 then
    Abort;

  if paPergunta = 'S' then
    if Application.MessageBox('Deseja realmente excluir o registro?', 'Pergunta!', MB_YESNO + MB_ICONQUESTION) = 6 then
    begin

      try

        pIniciaTransacao;

        pCriarQuery;

        with vQuery do
        begin

          Close;
          SQL.Text := fiDelete;
          ExecSQL;

        end;

        pApagarQuery;

        pAplicaTransacao;

      except

        pCancelaTransacao;

        Application.MessageBox('O registro possui dependencias?', 'Erro!', MB_OK + MB_ICONERROR);

      end;

    end
    else
      Abort
  else
  begin

    try

      pIniciaTransacao;

      pCriarQuery;

      with vQuery do
      begin

        Close;
        SQL.Text := fiDelete;
        ExecSQL;

      end;

      pApagarQuery;

      pAplicaTransacao;

    except

      pCancelaTransacao;

      Application.MessageBox('O registro possui dependencias?', 'Erro!', MB_OK + MB_ICONERROR);

    end;

  end;

end;

procedure TGeral.pFecharFormulario;
begin
  pIniciaTransacao;
  pCancelaTransacao;
end;

procedure TGeral.pIniciaTodosOsPageControl(paFormulario: TForm);
var
  vContador: Integer;
begin

  for vContador := 0 to paFormulario.ComponentCount - 1 do
  begin

    if paFormulario.Components[vContador] is TPageControl then
      TPageControl(paFormulario.Components[vContador]).TabIndex := 0;

  end;

end;

procedure TGeral.pIniciaTransacao;
begin
  with prosperisFrm.session do
  begin
    if InTransaction = False then
      StartTransaction;
  end;
end;

procedure TGeral.pPrint(paAcao, paTipo: string);
begin

  if paAcao = 'A' then
  begin
    vPrint := TRDprint.Create(nil);
    vPrint.OpcoesPreview.Preview := True;
  end;

  if paTipo = 'R' then
  begin
    vPrint.TamanhoQteLinhas := 80;
    vPrint.TamanhoQteColunas := 100;
    vPrint.Orientacao := poPortrait;
  end;

  if paTipo = 'P' then
  begin
    vPrint.TamanhoQteLinhas := 70;
    vPrint.TamanhoQteColunas := 180;
    vPrint.Orientacao := poLandscape;
  end;

  if paAcao = 'A' then
    vPrint.Abrir
  else
    vPrint.Fechar;

end;

procedure TGeral.pValidaUsuario(paUsuario, paSenha: string);
var
  vSql: string;

  procedure piPreencheSql;
  begin

    vSql := ' SELECT CASE' + ' WHEN COUNT(*) > 0 THEN' + #39 + 'S' + #39 + ' ELSE' + #39 + 'N' + #39 + ' END RESULTADO' + ' FROM (SELECT *' + ' FROM SEGUSUAR A' + ' WHERE A.CLOGIUSUAR = ' + #39 + paUsuario + #39 + ' AND A.CPASSUSUAR = ' + #39 + paSenha + #39 + ' AND A.CSTATUSUAR = ' + #39 + 'A' + #39 + ')';

    with vQuery do
    begin
      SQL.Text := vSql;
      Close;
      Open;
    end;

  end;

begin

  pCriarQuery;

  piPreencheSql;

  if vQuery.FieldByName('RESULTADO').Value = 'N' then
  begin

    Application.MessageBox('Usuario(a) ou senha inválida!', 'Atencao', MB_OK + MB_ICONERROR);
    loginFrm.edt1.SetFocus;

  end
  else
  begin
    prosperisFrm.lbl1.Caption := 'Usuario: ' + paUsuario;
    loginFrm.Close;
  end;

  pApagarQuery;

end;

procedure TGeral.pValidaCampos(paFormulario: TForm; paGroupBox: TGroupBox);

  procedure piPercorrerCampos(paTipo: string);
  var
    vContador: Integer;
    vConteudo: string;
  begin

    for vContador := 0 to paFormulario.ComponentCount - 1 do
    begin

      if paFormulario.Components[vContador] is TDBMemo then
        if TDBMemo(paFormulario.Components[vContador]).Parent.Name = paGroupBox.Name then
          if paTipo = 'S' then
          begin
            if TDBMemo(paFormulario.Components[vContador]).Tag in [1, 2] then
                if Length(Trim(TDBMemo(paFormulario.Components[vContador]).Lines.Text)) <= 0 then
              begin
                Application.MessageBox(PWideChar('Preencha o campo ' + TDBMemo(paFormulario.Components[vContador]).Hint + ' !'), 'Atenção', MB_OK + MB_ICONWARNING);
                TDBMemo(paFormulario.Components[vContador]).SetFocus;
                Abort;
              end;
          end;

      if paFormulario.Components[vContador] is TDBEdit then
        if TEdit(paFormulario.Components[vContador]).Parent.Name = paGroupBox.Name then
          if paTipo = 'S' then
          begin

            if TEdit(paFormulario.Components[vContador]).Tag = 99 then
              TEdit(paFormulario.Components[vContador]).SetFocus;

          end
          else
          begin
            if TEdit(paFormulario.Components[vContador]).Tag in [1, 2] then
            begin

              vConteudo := StringReplace(Trim(TEdit(paFormulario.Components[vContador]).Text), '(', '', [rfReplaceAll]);
              vConteudo := StringReplace(vConteudo, ')', '', [rfReplaceAll]);
              vConteudo := StringReplace(vConteudo, '-', '', [rfReplaceAll]);

              if Length(Trim(vConteudo)) <= 0 then
              begin
                Application.MessageBox(PWideChar('Preencha o campo ' + TEdit(paFormulario.Components[vContador]).Hint + ' !'), 'Atenção', MB_OK + MB_ICONWARNING);
                TEdit(paFormulario.Components[vContador]).SetFocus;
                Abort;
              end;

            end;
          end;

      if paFormulario.Components[vContador] is TDBLookupListBox then
        if TDBLookupListBox(paFormulario.Components[vContador]).Parent.Name = paGroupBox.Name then
          if paTipo = 'V' then
          begin
            if TDBLookupListBox(paFormulario.Components[vContador]).Tag in [1, 2] then
            begin

              if TDBLookupListBox(paFormulario.Components[vContador]).KeyValue = 0 then
              begin
                Application.MessageBox(PWideChar('Preencha o campo ' + TDBLookupListBox(paFormulario.Components[vContador]).Hint + ' !'), 'Atenção', MB_OK + MB_ICONWARNING);
                TDBLookupListBox(paFormulario.Components[vContador]).SetFocus;
                Abort;
              end;

            end;
          end;
    end;

  end;

begin

  piPercorrerCampos('S');
  piPercorrerCampos('V');

end;

end.

