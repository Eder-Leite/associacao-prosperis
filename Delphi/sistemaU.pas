unit sistemaU;

interface

  uses geralU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TSistema = class(TGeral)

  public

    vCodigoParaDetalhe : Integer;

    procedure pListar;
    procedure pManipula(paTipo,paOficial : string);

  end;

implementation

uses sistemaDmU, sistemaFrmU;

{ TSistema }

procedure TSistema.pListar;

  var
    vDescricao : string;
    vStatus    : string;

  procedure piPreencherFiltros;
    begin
      with sistemaFrm do
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

  with sistemaDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      ParamByName('STATUS').Value    := vStatus;
      Open;
    end;

end;

procedure TSistema.pManipula(paTipo,paOficial: string);

  var
   vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with sistemaDm do
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
                  vCodigo            := qryListaNCODISISTE.AsInteger;
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

  with sistemaFrm, sistemaDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaCSTATSISTE.Value := 'A';

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGSISTE',qryListaNCODISISTE.AsString,'S');

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

            pValidaCampos(sistemaFrm,grp3);

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('SEG_SSEGSISTE')
            else
              vCodigo := qryManipulaNCODISISTE.Value;

            if paOficial = 'N' then
              vCodigoParaDetalhe := vCodigo;

            qryManipulaNCODISISTE.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pListar;

            qryLista.Locate('NCODISISTE',vCodigo,[]);

            if paOficial = 'S' then
              pAplicaTransacao;

          except

            pCancelaTransacao;
            Abort;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          vCodigo := qryManipulaNCODISISTE.Value;

          qryManipula.Cancel;
          qryManipula.Close;

          pCancelaTransacao;

          pListar;

          qryLista.Locate('NCODISISTE',vCodigo,[]);

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',sistemaFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',sistemaFrm,pnl1,pgc1,grp3);

    end;

end;

end.
