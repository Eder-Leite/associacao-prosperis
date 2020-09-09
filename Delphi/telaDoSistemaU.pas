unit telaDoSistemaU;

interface

  uses sistemaU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TTelaDoSistema = class(TSistema)

  public
    procedure pListarTelaDoSistema;
    procedure pManipulaTelaDoSistema(paTipo : string);

  end;

implementation

uses sistemaDmU, telaDoSistemaDmU, sistemaFrmU;

{ TTelaDoSistema }

procedure TTelaDoSistema.pListarTelaDoSistema;
begin

  with telaDoSistemaDm.qryLista, sistemaDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryManipulaNCODISISTE.Value;
      Open;
    end;

end;

procedure TTelaDoSistema.pManipulaTelaDoSistema(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with telaDoSistemaDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODITELSI.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with sistemaFrm, telaDoSistemaDm do
    begin

      if paTipo = 'novo' then
        begin

          if sistemaDm.qryManipula.State in [dsInsert] then
            begin
              pManipula('salvar','N');
              pManipula('editar','N');
            end;

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaNCODISISTE.Value := vCodigoParaDetalhe;
          qryManipulaCSTATTELSI.Value := 'A';

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('SEGTELSI',qryListaNCODITELSI.AsString,'N');

          pListarTelaDoSistema;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(sistemaFrm,grp5);

          if qryManipula.State in [dsInsert] then
            vCodigo := fCodigo('SEG_SSEGTELSI')
          else
            vCodigo := qryManipulaNCODITELSI.Value;

          qryManipulaNCODITELSI.Value := vCodigo;
          qryManipula.Post;
          qryManipula.Close;

          pListarTelaDoSistema;

          qryLista.Locate('NCODITELSI',vCodigo,[]);

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
          pControlaBotoes('A',sistemaFrm,pnl6,pgc2,grp5);
          pControlaBotoes('C',sistemaFrm,pnl1,pgc1,grp3);
          pBloqueioPorNiveis(sistemaFrm,1,False);
        end
      else
        begin
          pControlaBotoes('B',sistemaFrm,pnl6,pgc2,grp5);
          pBloqueioPorNiveis(sistemaFrm,1,True);
          pControlaBotoes('A',sistemaFrm,pnl1,pgc1,grp3);
        end;

    end;

end;

end.
