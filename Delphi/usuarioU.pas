unit usuarioU;

interface

  uses geralU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TUsuario = class(TGeral)

  public

    vCodigoParaDetalhe : Integer;

    procedure pListar;
    procedure pManipula(paTipo,paOficial : string);

  end;

implementation

uses usuarioDmU, usuarioFrmU;

{ TUsuario }

procedure TUsuario.pListar;

  var
    vDescricao : string;
    vStatus    : string;

  procedure piPreencherFiltros;
    begin
      with usuarioFrm do
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

  with usuarioDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      ParamByName('STATUS').Value    := vStatus;
      Open;
    end;

end;

procedure TUsuario.pManipula(paTipo,paOficial: string);

  var
   vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with usuarioDm do
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
                  vCodigo            := qryListaNCODIUSUAR.AsInteger;
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

  with usuarioFrm, usuarioDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaCADMIUSUAR.Value := 'N';
          qryManipulaCSTATUSUAR.Value := 'A';
          qryManipulaCPMRCUSUAR.Value := 'N';
          qryManipulaNQPDRUSUAR.Value:= 180;
          qryManipulaNQPPRUSUAR.Value:= 3;
          qryManipulaNQPARUSUAR.Value:= 3;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGUSUAR',qryListaNCODIUSUAR.AsString,'S');

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

            pValidaCampos(usuarioFrm,grp3);

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('SEG_SSEGUSUAR')
            else
              vCodigo := qryManipulaNCODIUSUAR.Value;

            if paOficial = 'N' then
              vCodigoParaDetalhe := vCodigo;

            qryManipulaNCODIUSUAR.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pListar;

            qryLista.Locate('NCODIUSUAR',vCodigo,[]);

            if paOficial = 'S' then
              pAplicaTransacao;

          except

            pCancelaTransacao;
            Abort;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          vCodigo := qryManipulaNCODIUSUAR.Value;

          qryManipula.Cancel;
          qryManipula.Close;

          pCancelaTransacao;

          pListar;

          qryLista.Locate('NCODIUSUAR',vCodigo,[]);

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
        pControlaBotoes('A',usuarioFrm,pnl1,pgc1,grp3);
        DBEdit7.SetFocus;
        end
      else
        pControlaBotoes('B',usuarioFrm,pnl1,pgc1,grp3);

    end;

end;

end.
