unit perfilU;

interface

  uses geralU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TPerfil = class(TGeral)

  public

    vCodigoParaDetalhe : Integer;

    procedure pListar;
    procedure pManipula(paTipo,paOficial : string);

  end;

implementation

uses perfilDmU, perfilFrmU;

{ TPerfil }

procedure TPerfil.pListar;

  var
    vDescricao : string;
    vStatus    : string;

  procedure piPreencherFiltros;
    begin
      with perfilFrm do
        begin
          vDescricao := edt1.Text;

          if rg1.ItemIndex = 0 then
            vStatus := 'A'
          else
            if rg1.ItemIndex = 1 then
              vStatus := 'I'
            else
              vStatus := '%';

        end;
    end;

begin

  piPreencherFiltros;

  with perfilDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      ParamByName('STATUS').Value    := vStatus;
      Open;
    end;

end;

procedure TPerfil.pManipula(paTipo,paOficial: string);

  var
   vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with perfilDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              if paOficial = 'N' then
                vCodigo := vCodigoParaDetalhe
              else
                begin
                  vCodigo            := qryListaNCODIPERFI.AsInteger;
                  vCodigoParaDetalhe := vCodigo;
                end;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with perfilFrm, perfilDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaCSTATPERFI.Value := 'A';

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGPERFI',qryListaNCODIPERFI.AsString,'S');

          pListar;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          try

            if paOficial = 'S' then
              pIniciaTransacao;

            pValidaCampos(perfilFrm,grp3);

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('SEG_SSEGPERFI')
            else
              vCodigo := qryManipulaNCODIPERFI.Value;

            if paOficial = 'N' then
              vCodigoParaDetalhe := vCodigo;

            qryManipulaNCODIPERFI.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pListar;

            qryLista.Locate('NCODIPERFI',vCodigo,[]);

            if paOficial = 'S' then
              pAplicaTransacao;

          except

            pCancelaTransacao;
            Abort;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          vCodigo := qryManipulaNCODIPERFI.Value;

          qryManipula.Cancel;
          qryManipula.Close;

          pCancelaTransacao;

          pListar;

          qryLista.Locate('NCODIPERFI',vCodigo,[]);

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',perfilFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',perfilFrm,pnl1,pgc1,grp3);

    end;

end;

end.
