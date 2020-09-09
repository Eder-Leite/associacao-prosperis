unit contaFinanceiraU;

interface

  uses geralU, StrUtils, SysUtils, DB;

type
  TContaFinanceira = class(TGeral)

  public
    procedure pListar;
    procedure pManipula(paTipo : string);

  end;

implementation

uses contaFinanceiraDmU, contaFinanceiraFrmU;

{ TContaFinanceira }

procedure TContaFinanceira.pListar;

  var
    vDescricao : string;

begin

  vDescricao := contaFinanceiraFrm.edt1.Text;

  with contaFinanceiraDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      Open;
    end;

end;

procedure TContaFinanceira.pManipula(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with contaFinanceiraDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODICONFI.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with contaFinanceiraFrm, contaFinanceiraDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('FINCONFI',qryListaNCODICONFI.AsString,'N');

          pListar;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(contaFinanceiraFrm,grp3);

          try

            pIniciaTransacao;

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('FIN_SFINCONFI')
            else
              vCodigo := qryManipulaNCODICONFI.Value;

            qryManipulaNCODICONFI.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pAplicaTransacao;

            pListar;

            qryLista.Locate('NCODICONFI',vCodigo,[]);

          except

            pCancelaTransacao;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',contaFinanceiraFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',contaFinanceiraFrm,pnl1,pgc1,grp3);

    end;

end;

end.
