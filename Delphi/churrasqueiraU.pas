unit churrasqueiraU;

interface

  uses geralU, StrUtils, SysUtils, DB;

type
  TChurrasqueira = class(TGeral)

  public

    vCodigoParaDetalhe : Integer;

    procedure pListar;
    procedure pManipula(paTipo,paOficial : string);

  end;

implementation

uses churrasqueiraDmU, churrasqueiraFrmU;

{ TChurrasqueira }

procedure TChurrasqueira.pListar;

  var
    vDescricao : string;

begin

  vDescricao := churrasqueiraFrm.edt1.Text;

  with churrasqueiraDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      Open;
    end;

end;

procedure TChurrasqueira.pManipula(paTipo,paOficial: string);

  var
   vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with churrasqueiraDm do
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
                  vCodigo            := qryListaNCODICHURR.AsInteger;
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

  with churrasqueiraFrm, churrasqueiraDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('ASSCHURR',qryListaNCODICHURR.AsString,'S');

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

            pValidaCampos(churrasqueiraFrm,grp3);

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('ASS_SASSCHURR')
            else
              vCodigo := qryManipulaNCODICHURR.Value;

            if paOficial = 'N' then
              vCodigoParaDetalhe := vCodigo;

            qryManipulaNCODICHURR.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pListar;

            qryLista.Locate('NCODICHURR',vCodigo,[]);

            if paOficial = 'S' then
              pAplicaTransacao;

          except

            pCancelaTransacao;
            Abort;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          vCodigo := qryManipulaNCODICHURR.Value;

          qryManipula.Cancel;
          qryManipula.Close;

          pCancelaTransacao;

          pListar;

          qryLista.Locate('NCODICHURR',vCodigo,[]);

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',churrasqueiraFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',churrasqueiraFrm,pnl1,pgc1,grp3);

    end;

end;

end.
