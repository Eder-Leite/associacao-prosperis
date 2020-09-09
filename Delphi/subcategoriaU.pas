unit subcategoriaU;

interface

  uses categoriaU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TSubcategoria = class(TCategoria)

  public
    procedure pListarSubcategoria;
    procedure pManipulaSubcategoria(paTipo : string);

  end;

implementation

uses categoriaDmU, subcategoriaDmU, categoriaSubcategoriaFrmU;

{ TSubcategoria }

procedure TSubcategoria.pListarSubcategoria;
begin

  with subcategoriaDm.qryLista, categoriaDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryManipulaNCODIGREDE.Value;
      Open;
    end;

end;

procedure TSubcategoria.pManipulaSubcategoria(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with subcategoriaDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODISREDE.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with categoriaSubcategoriaFrm, subcategoriaDm do
    begin

      if paTipo = 'novo' then
        begin

          if categoriaDm.qryManipula.State in [dsInsert] then
            begin
              pManipula('salvar','N');
              pManipula('editar','N');
            end;

          pListarSubcategoria;

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaNCODIGREDE.Value := vCodigoParaDetalhe;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('FINSREDE',qryListaNCODISREDE.AsString,'N');

          pListarSubcategoria;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(categoriaSubcategoriaFrm,grp5);

          if qryManipula.State in [dsInsert] then
            vCodigo := fCodigo('FIN_SFINSREDE')
          else
            vCodigo := qryManipulaNCODISREDE.Value;

          qryManipulaNCODISREDE.Value := vCodigo;
          qryManipula.Post;
          qryManipula.Close;

          pListarSubcategoria;

          qryLista.Locate('NCODISREDE',vCodigo,[]);

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
          pControlaBotoes('A',categoriaSubcategoriaFrm,pnl6,pgc2,grp5);
          pControlaBotoes('C',categoriaSubcategoriaFrm,pnl1,pgc1,grp3);
          pBloqueioPorNiveis(categoriaSubcategoriaFrm,1,False);
        end
      else
        begin
          pControlaBotoes('B',categoriaSubcategoriaFrm,pnl6,pgc2,grp5);
          pBloqueioPorNiveis(categoriaSubcategoriaFrm,1,True);
          pControlaBotoes('A',categoriaSubcategoriaFrm,pnl1,pgc1,grp3);
        end;

    end;

end;

end.
