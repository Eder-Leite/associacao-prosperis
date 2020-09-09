unit categoriaU;

interface

  uses geralU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TCategoria = class(TGeral)

  public

    vCodigoParaDetalhe : Integer;

    procedure pListar;
    procedure pManipula(paTipo,paOficial : string);

  end;

implementation

uses categoriaDmU, categoriaSubcategoriaFrmU;

{ TCategoria }

procedure TCategoria.pListar;

  var
    vDescricao : string;

begin

  vDescricao := categoriaSubcategoriaFrm.edt1.Text;

  with categoriaDm.qryLista do
    begin
      Close;
      ParamByName('DESCRICAO').Value := vDescricao;
      Open;
    end;

end;

procedure TCategoria.pManipula(paTipo,paOficial: string);

  var
   vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with categoriaDm do
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
                  vCodigo            := qryListaNCODIGREDE.AsInteger;
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

  with categoriaSubcategoriaFrm, categoriaDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('FINGREDE',qryListaNCODIGREDE.AsString,'S');

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

            pValidaCampos(categoriaSubcategoriaFrm,grp3);

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('FIN_SFINGREDE')
            else
              vCodigo := qryManipulaNCODIGREDE.Value;

            if paOficial = 'N' then
              vCodigoParaDetalhe := vCodigo;

            qryManipulaNCODIGREDE.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pListar;

            qryLista.Locate('NCODIGREDE',vCodigo,[]);

            if paOficial = 'S' then
              pAplicaTransacao;

          except

            pCancelaTransacao;
            Abort;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          vCodigo := qryManipulaNCODIGREDE.Value;

          qryManipula.Cancel;
          qryManipula.Close;

          pCancelaTransacao;

          pListar;

          qryLista.Locate('NCODIGREDE',vCodigo,[]);

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',categoriaSubcategoriaFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',categoriaSubcategoriaFrm,pnl1,pgc1,grp3);

    end;

end;

end.
