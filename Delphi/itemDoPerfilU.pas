unit itemDoPerfilU;

interface

  uses perfilU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TItemDoPerfil = class(TPerfil)

  public
    procedure pListarItemDoPerfil;
    procedure pListarManipulaSistema;
    procedure pListarManipulaTela;
    procedure pManipulaItemDoPerfil(paTipo : string);

  end;

implementation

uses perfilDmU, itemDoPerfilDmU, perfilFrmU;

{ TItemDoPerfil }

procedure TItemDoPerfil.pListarItemDoPerfil;
begin

  with itemDoPerfilDm.qryLista, perfilDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryManipulaNCODIPERFI.Value;
      Open;
    end;

end;

procedure TItemDoPerfil.pListarManipulaSistema;
begin
  with itemDoPerfilDm.qryListaManipulaSistema do
    begin
      Close;
      Open;
    end;
end;

procedure TItemDoPerfil.pListarManipulaTela;
begin
  with itemDoPerfilDm.qryListaManipulaTela, itemDoPerfilDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryListaManipulaSistemaCODIGO.AsInteger;
      Open;
    end;
end;

procedure TItemDoPerfil.pManipulaItemDoPerfil(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with itemDoPerfilDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODIITPER.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with perfilFrm, itemDoPerfilDm do
    begin

      if paTipo = 'novo' then
        begin

          if perfilDm.qryManipula.State in [dsInsert] then
            begin
              pManipula('salvar','N');
              pManipula('editar','N');
            end;

          pListarManipulaSistema;
          pListarManipulaTela;

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaNCODIPERFI.Value := vCodigoParaDetalhe;
          qryManipulaNCODISISTE.Value := 0;
          qryManipulaNCODITELSI.Value := 0;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGITPER',qryListaNCODIITPER.AsString,'N');

          pListarItemDoPerfil;

        end;

      if paTipo = 'editar' then
        begin

          pListarManipulaSistema;

          piBuscarRegistro;

          qryManipula.Edit;

          pListarManipulaTela;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(perfilFrm,grp5);
          pValidaCampos(perfilFrm,grp7);
          pValidaCampos(perfilFrm,grp8);

          if qryManipula.State in [dsInsert] then
            vCodigo := fCodigo('SEG_SSEGITPER')
          else
            vCodigo := qryManipulaNCODIITPER.Value;

          qryManipulaNCODIITPER.Value := vCodigo;
          qryManipula.Post;
          qryManipula.Close;
          qryListaManipulaSistema.Close;
          qryListaManipulaTela.Close;

          pListarItemDoPerfil;

          qryLista.Locate('NCODIITPER',vCodigo,[]);

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;
          qryListaManipulaSistema.Close;
          qryListaManipulaTela.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
          pControlaBotoes('A',perfilFrm,pnl6,pgc2,grp5);
          pControlaBotoes('C',perfilFrm,pnl1,pgc1,grp3);
          pBloqueioPorNiveis(perfilFrm,1,False);
        end
      else
        begin
          pControlaBotoes('B',perfilFrm,pnl6,pgc2,grp5);
          pBloqueioPorNiveis(perfilFrm,1,True);
          pControlaBotoes('A',perfilFrm,pnl1,pgc1,grp3);
        end;

    end;

end;

end.
