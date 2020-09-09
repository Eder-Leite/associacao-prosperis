unit avaliacaoFisicaU;

interface

  uses geralU, StrUtils, SysUtils, DB, DateUtils, Forms, Windows;

type
  TAvaliacaoFisica = class(TGeral)

  public

    procedure pAlimentaPeriodo;

    procedure pListar;
    procedure pManipula(paTipo : string);
    procedure pBuscaFuncionario(paTipo,paParametro : string);

  end;

implementation

uses avaliacaoFisicaDmU, avaliacaoFisicaFrmU;

{ TReserva }

procedure TAvaliacaoFisica.pBuscaFuncionario(paTipo, paParametro: string);
begin

  with avaliacaoFisicaDm.qryBuscaFuncionario do
    begin
      Close;
      ParamByName('TIPO').Value      := paTipo;
      ParamByName('PARAMETRO').Value := paParametro;
      Open;
    end;

  with avaliacaoFisicaDm do
    begin

      if qryBuscaFuncionario.IsEmpty then
        qryManipulaNCODIFUNCI.Value := 0
      else
        qryManipulaNCODIFUNCI.Value := qryBuscaFuncionarioNCODIFUNCI.AsInteger;

    end;

end;

procedure TAvaliacaoFisica.pListar;

  var
    vNome          : string;
    vInicio        : string;
    vFim           : string;

  procedure piPreencherFiltros;
    begin

      with avaliacaoFisicaFrm do
        begin

          vNome    := edt3.Text;

          vInicio := fValidaData(edt1,'T');
          vFim    := fValidaData(edt2,'T');

        end;

    end;

begin

  piPreencherFiltros;

  with avaliacaoFisicaDm.qryLista do
    begin
      Close;
      ParamByName('NOME').Value          := vNome;
      ParamByName('INICIO').Value        := vInicio;
      ParamByName('FIM').Value           := vFim;
      Open;
    end;

end;

procedure TAvaliacaoFisica.pManipula(paTipo: string);

  var
    vCodigo  : Integer;

  procedure piListaManipulaFuncionario;
    begin
      with avaliacaoFisicaDm.qryBuscaFuncionario do
        begin
          Close;
          Open;
        end;
    end;

  procedure piBuscarRegistro;
    begin

      with avaliacaoFisicaDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODIAVAFI.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with avaliacaoFisicaFrm, avaliacaoFisicaDm do
    begin

      if paTipo = 'novo' then
        begin

          piListaManipulaFuncionario;

          piBuscarRegistro;

          qryManipula.Insert;
          qryManipulaDDATAAVAFI.Value := Date;
          qryManipulaCPUTSAVAFI.Value := 'N';
          qryManipulaCEXCOAVAFI.Value := 'N';
          qryManipulaNCODIFUNCI.Value := 0;

          pBuscaFuncionario('0','0');

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('ASSAVAFI',qryListaNCODIAVAFI.AsString,'N');

          pListar;

        end;

      if paTipo = 'editar' then
        begin

          piListaManipulaFuncionario;

          piBuscarRegistro;

          qryManipula.Edit;

          pBuscaFuncionario('CODIGO',qryManipulaNCODIFUNCI.AsString);

          edt4.Text := qryBuscaFuncionarioCCRACFUNCI.AsString;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(avaliacaoFisicaFrm,grp3);

          if qryBuscaFuncionario.IsEmpty then
            begin

              Application.MessageBox('Preencha o campo "Cracha"!','Atencao!',MB_OK+MB_ICONWARNING);
              edt4.SetFocus;
              Abort;

            end;

          try

            pIniciaTransacao;

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('ASS_SASSAVAFI')
            else
              vCodigo := qryManipulaNCODIAVAFI.Value;

            qryManipulaNCODIAVAFI.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;
            qryBuscaFuncionario.Close;

            pAplicaTransacao;

            pListar;

            qryLista.Locate('NCODIAVAFI',vCodigo,[]);

          except

            pCancelaTransacao;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;
          qryBuscaFuncionario.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',avaliacaoFisicaFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',avaliacaoFisicaFrm,pnl1,pgc1,grp3);

    end;

end;

procedure TAvaliacaoFisica.pAlimentaPeriodo;
begin

  with avaliacaoFisicaFrm do
    begin
      edt1.Text := DateToStr(StartOfTheMonth(now));
      edt2.Text := DateToStr(EndOfTheMonth(now));
    end;

end;

end.
