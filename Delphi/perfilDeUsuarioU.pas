unit perfilDeUsuarioU;

interface

  uses usuarioU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TPerfilDeUsuario = class(TUsuario)

  public
    procedure pListarPerfilDeUsuario;
    procedure pListarManipulaPerfil;
    procedure pManipulaPerfilDeUsuario(paTipo : string);

  end;

implementation

uses usuarioDmU, perfilDeUsuarioDmU, usuarioFrmU;

{ TItemDoPerfil }

procedure TPerfilDeUsuario.pListarPerfilDeUsuario;
begin

  with perfilDeUsuarioDm.qryLista, usuarioDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryManipulaNCODIUSUAR.Value;
      Open;
    end;

end;

procedure TPerfilDeUsuario.pListarManipulaPerfil;
begin
  with perfilDeUsuarioDm.qryListaManipulaPerfil do
    begin
      Close;
      Open;
    end;
end;

procedure TPerfilDeUsuario.pManipulaPerfilDeUsuario(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with perfilDeUsuarioDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODIPERUS.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with usuarioFrm, perfilDeUsuarioDm do
    begin

      if paTipo = 'novo' then
        begin

          if usuarioDm.qryManipula.State in [dsInsert] then
            begin
              pManipula('salvar','N');
              pManipula('editar','N');
            end;

          pListarManipulaPerfil;

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaNCODIUSUAR.Value := vCodigoParaDetalhe;
          qryManipulaNCODIPERFI.Value := 0;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGPERUS',qryListaNCODIPERUS.AsString,'N');

          pListarPerfilDeUsuario;

        end;

      if paTipo = 'editar' then
        begin

          pListarManipulaPerfil;

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(usuarioFrm,grp5);
          pValidaCampos(usuarioFrm,grp7);

          if qryManipula.State in [dsInsert] then
            vCodigo := fCodigo('SEG_SSEGPERUS')
          else
            vCodigo := qryManipulaNCODIPERUS.Value;

          qryManipulaNCODIPERUS.Value := vCodigo;
          qryManipula.Post;
          qryManipula.Close;
          qryListaManipulaPerfil.Close;

          pListarPerfilDeUsuario;

          qryLista.Locate('NCODIPERUS',vCodigo,[]);

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;
          qryListaManipulaPerfil.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
          pControlaBotoes('A',usuarioFrm,pnl6,pgc2,grp5);
          pControlaBotoes('C',usuarioFrm,pnl1,pgc1,grp3);
          pBloqueioPorNiveis(usuarioFrm,1,False);
        end
      else
        begin
          pControlaBotoes('B',usuarioFrm,pnl6,pgc2,grp5);
          pBloqueioPorNiveis(usuarioFrm,1,True);
          pControlaBotoes('A',usuarioFrm,pnl1,pgc1,grp3);
        end;

    end;

end;

end.
