unit pertenceDeChurrasqueiraU;

interface

  uses churrasqueiraU, StrUtils, SysUtils, DB, Forms, Windows;

type
  TPertenceDeChurrasqueira = class(TChurrasqueira)

  public
    procedure pListarPertence;
    procedure pManipulaPertence(paTipo : string);

  end;

implementation

uses churrasqueiraDmU, pertenceDeChurrasqueiraDmU, churrasqueiraFrmU;

{ TPertenceDeChurrasqueira }

procedure TPertenceDeChurrasqueira.pListarPertence;
begin

  with pertenceDeChurrasqueiraDm.qryLista, churrasqueiraDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryManipulaNCODICHURR.Value;
      Open;
    end;

end;

procedure TPertenceDeChurrasqueira.pManipulaPertence(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with pertenceDeChurrasqueiraDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODIPECHU.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

begin

  with churrasqueiraFrm, pertenceDeChurrasqueiraDm do
    begin

      if paTipo = 'novo' then
        begin

          if churrasqueiraDm.qryManipula.State in [dsInsert] then
            begin
              pManipula('salvar','N');
              pManipula('editar','N');
            end;

          pListarPertence;

          piBuscarRegistro;

          qryManipula.Insert;

          qryManipulaNCODICHURR.Value := vCodigoParaDetalhe;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('ASSPECHU',qryListaNCODIPECHU.AsString,'N');

          pListarPertence;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

        end;

      if paTipo = 'salvar' then
        begin

          pValidaCampos(churrasqueiraFrm,grp5);

          if qryManipula.State in [dsInsert] then
            vCodigo := fCodigo('ASS_SASSPECHU')
          else
            vCodigo := qryManipulaNCODIPECHU.Value;

          qryManipulaNCODIPECHU.Value := vCodigo;
          qryManipula.Post;
          qryManipula.Close;

          pListarPertence;

          qryLista.Locate('NCODIPECHU',vCodigo,[]);

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        begin
          pControlaBotoes('A',churrasqueiraFrm,pnl6,pgc2,grp5);
          pControlaBotoes('C',churrasqueiraFrm,pnl1,pgc1,grp3);
          pBloqueioPorNiveis(churrasqueiraFrm,1,False);
        end
      else
        begin
          pControlaBotoes('B',churrasqueiraFrm,pnl6,pgc2,grp5);
          pBloqueioPorNiveis(churrasqueiraFrm,1,True);
          pControlaBotoes('A',churrasqueiraFrm,pnl1,pgc1,grp3);
        end;

    end;

end;

end.
