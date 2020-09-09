unit sistemaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, telaDoSistemaU;

type
  TsistemaFrm = class(TpadraoFrm)
    rg1: TRadioGroup;
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dbchk1: TDBCheckBox;
    grp6: TGroupBox;
    pnl6: TPanel;
    btnNovoItem: TSpeedButton;
    btnExcluirItem: TSpeedButton;
    btnSalvarItem: TSpeedButton;
    btnCancelarItem: TSpeedButton;
    pgc2: TPageControl;
    ts3: TTabSheet;
    pnl7: TPanel;
    DBGrid1: TDBGrid;
    ts4: TTabSheet;
    pnl8: TPanel;
    grp5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure pgc2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tds : TTelaDoSistema;
  end;

var
  sistemaFrm: TsistemaFrm;

implementation

uses sistemaDmU, telaDoSistemaDmU;

{$R *.dfm}

procedure TsistemaFrm.btn1Click(Sender: TObject);
begin
  tds.pListar;
end;

procedure TsistemaFrm.btnCancelarClick(Sender: TObject);
begin
  tds.pManipula('cancelar','S');
end;

procedure TsistemaFrm.btnCancelarItemClick(Sender: TObject);
begin
  tds.pManipulaTelaDoSistema('cancelar');
end;

procedure TsistemaFrm.btnExcluirClick(Sender: TObject);
begin
  tds.pManipula('excluir','S');
end;

procedure TsistemaFrm.btnExcluirItemClick(Sender: TObject);
begin
  tds.pManipulaTelaDoSistema('excluir');
end;

procedure TsistemaFrm.btnNovoClick(Sender: TObject);
begin
  tds.pManipula('novo','S');
  tds.pListarTelaDoSistema;
end;

procedure TsistemaFrm.btnNovoItemClick(Sender: TObject);
begin
  tds.pManipulaTelaDoSistema('novo');
end;

procedure TsistemaFrm.btnSalvarClick(Sender: TObject);
begin
  tds.pManipula('salvar','S');
end;

procedure TsistemaFrm.btnSalvarItemClick(Sender: TObject);
begin
  tds.pManipulaTelaDoSistema('salvar');
end;

procedure TsistemaFrm.DBGrid1DblClick(Sender: TObject);
begin
  tds.pManipulaTelaDoSistema('editar');
end;

procedure TsistemaFrm.FormActivate(Sender: TObject);
begin
  tds.pIniciaTodosOsPageControl(sistemaFrm);
  tds.pListar;
end;

procedure TsistemaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tds.pFecharFormulario;
end;

procedure TsistemaFrm.FormCreate(Sender: TObject);
begin
  tds := TTelaDoSistema.Create;
end;

procedure TsistemaFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(tds);
end;

procedure TsistemaFrm.Lista1DblClick(Sender: TObject);
begin
  tds.pManipula('editar','S');
  tds.pListarTelaDoSistema;
end;

procedure TsistemaFrm.pgc2Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
