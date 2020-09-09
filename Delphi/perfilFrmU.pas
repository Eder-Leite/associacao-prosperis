unit perfilFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, itemDoPerfilU;

type
  TperfilFrm = class(TpadraoFrm)
    rg1: TRadioGroup;
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dbchk1: TDBCheckBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    DBEdit3: TDBEdit;
    grp7: TGroupBox;
    grp8: TGroupBox;
    combo1: TDBLookupListBox;
    combo2: TDBLookupListBox;
    procedure pgc2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure combo1Click(Sender: TObject);
    procedure combo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    prf : TItemDoPerfil;
  end;

var
  perfilFrm: TperfilFrm;

implementation

uses perfilDmU, itemDoPerfilDmU;

{$R *.dfm}

procedure TperfilFrm.btn1Click(Sender: TObject);
begin
  prf.pListar;
end;

procedure TperfilFrm.btnCancelarClick(Sender: TObject);
begin
  prf.pManipula('cancelar','S');
end;

procedure TperfilFrm.btnCancelarItemClick(Sender: TObject);
begin
  prf.pManipulaItemDoPerfil('cancelar');
end;

procedure TperfilFrm.btnExcluirClick(Sender: TObject);
begin
  prf.pManipula('excluir','S');
end;

procedure TperfilFrm.btnExcluirItemClick(Sender: TObject);
begin
  prf.pManipulaItemDoPerfil('excluir');
end;

procedure TperfilFrm.btnNovoClick(Sender: TObject);
begin
  prf.pManipula('novo','S');
  prf.pListarItemDoPerfil;
end;

procedure TperfilFrm.btnNovoItemClick(Sender: TObject);
begin
  prf.pManipulaItemDoPerfil('novo');
end;

procedure TperfilFrm.btnSalvarClick(Sender: TObject);
begin
  prf.pManipula('salvar','S');
end;

procedure TperfilFrm.btnSalvarItemClick(Sender: TObject);
begin
  prf.pManipulaItemDoPerfil('salvar');
end;

procedure TperfilFrm.combo1Click(Sender: TObject);
begin
  prf.pListarManipulaTela;
end;

procedure TperfilFrm.combo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  prf.pListarManipulaTela;
end;

procedure TperfilFrm.DBGrid1DblClick(Sender: TObject);
begin
  prf.pManipulaItemDoPerfil('editar');
end;

procedure TperfilFrm.FormActivate(Sender: TObject);
begin
  prf.pIniciaTodosOsPageControl(perfilFrm);
  prf.pListar;
end;

procedure TperfilFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  prf.pFecharFormulario;
end;

procedure TperfilFrm.FormCreate(Sender: TObject);
begin
  prf := TItemDoPerfil.Create;
end;

procedure TperfilFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(prf);
end;

procedure TperfilFrm.Lista1DblClick(Sender: TObject);
begin
  prf.pManipula('editar','S');
  prf.pListarItemDoPerfil;
end;

procedure TperfilFrm.pgc2Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
