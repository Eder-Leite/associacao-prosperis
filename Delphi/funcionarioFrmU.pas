unit funcionarioFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, StdCtrls, Grids,
  DBGrids, Buttons, ExtCtrls, funcionarioDmU;

type
  TfuncionarioFrm = class(TForm)
    pnl1: TPanel;
    btnSair: TSpeedButton;
    btn1: TSpeedButton;
    grp1: TGroupBox;
    grp4: TGroupBox;
    dbCracha: TEdit;
    grp2: TGroupBox;
    dbgridLista: TDBGrid;
    GroupBox1: TGroupBox;
    dbNome: TEdit;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure dbgridListaDblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure pPesquisar;
    procedure pLocaliza(paId: Integer);
    procedure pManipular;
    { Public declarations }
  end;

var
  funcionarioFrm: TfuncionarioFrm;

implementation

{$R *.dfm}

procedure TfuncionarioFrm.btn1Click(Sender: TObject);
begin
  pPesquisar;
end;

procedure TfuncionarioFrm.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TfuncionarioFrm.dbgridListaDblClick(Sender: TObject);
begin
  pManipular;
end;

procedure TfuncionarioFrm.pLocaliza(paId: Integer);
begin
  with funcionarioDm.qryLista do
  begin
    Locate('NCODIFUNCI', paId, []);
  end;
end;

procedure TfuncionarioFrm.pManipular;
var
  vID: Integer;
begin
  if dbgridLista.DataSource.DataSet.RecordCount > 0 then
  begin
    with funcionarioDm, funcionarioDm.qryManipula do
    begin

      vID := qryListaNCODIFUNCI.AsInteger;

      Close;
      ParamByName('P_CPRFRFUNCI').AsString := qryListaCPRFRFUNCI.AsString;
      ParamByName('P_NCODIFUNCI').AsInteger := vID;
      ExecSQL;

      pPesquisar;

      pLocaliza(vID);

    end;
  end;
end;

procedure TfuncionarioFrm.pPesquisar;
begin
  with funcionarioDm.qryLista do
  begin
    Close;
    ParamByName('P_NOME').AsString := '%' + dbNome.Text + '%';
    ParamByName('P_CRACHA').AsString := '%' + dbCracha.Text + '%';
    Open;
  end;
end;

end.

