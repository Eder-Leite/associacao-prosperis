unit churrasqueiraFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, pertenceDeChurrasqueiraU;

type
  TchurrasqueiraFrm = class(TpadraoFrm)
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    dbNCODICHURR: TDBEdit;
    Label2: TLabel;
    dbCDESCCHURR: TDBEdit;
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
    Label5: TLabel;
    DBEdit5: TDBEdit;
    dbchkCSTATCHURR: TDBCheckBox;
    Label6: TLabel;
    dbNVLTXCHURR: TDBEdit;
    grpDias: TGroupBox;
    dbchkCDPSGCHURR: TDBCheckBox;
    dbchkCDPTECHURR: TDBCheckBox;
    dbchkCDPQACHURR: TDBCheckBox;
    dbchkCDPQICHURR: TDBCheckBox;
    dbchkCDPSECHURR: TDBCheckBox;
    dbchkCDPSACHURR: TDBCheckBox;
    dbchkCDPDOCHURR: TDBCheckBox;
    Label7: TLabel;
    dbNVLTTCHURR: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    chr : TPertenceDeChurrasqueira;
  end;

var
  churrasqueiraFrm: TchurrasqueiraFrm;

implementation

uses churrasqueiraDmU, pertenceDeChurrasqueiraDmU;

{$R *.dfm}

procedure TchurrasqueiraFrm.btn1Click(Sender: TObject);
begin
  chr.pListar;
end;

procedure TchurrasqueiraFrm.btnCancelarClick(Sender: TObject);
begin
  chr.pManipula('cancelar','S');
end;

procedure TchurrasqueiraFrm.btnCancelarItemClick(Sender: TObject);
begin
  chr.pManipulaPertence('cancelar');
end;

procedure TchurrasqueiraFrm.btnExcluirClick(Sender: TObject);
begin
  chr.pManipula('excluir','S');
end;

procedure TchurrasqueiraFrm.btnExcluirItemClick(Sender: TObject);
begin
  chr.pManipulaPertence('excluir');
end;

procedure TchurrasqueiraFrm.btnNovoClick(Sender: TObject);
begin
  chr.pManipula('novo','S');
  chr.pListarPertence;
end;

procedure TchurrasqueiraFrm.btnNovoItemClick(Sender: TObject);
begin
  chr.pManipulaPertence('novo');
end;

procedure TchurrasqueiraFrm.btnSalvarClick(Sender: TObject);
begin
  chr.pManipula('salvar','S');
end;

procedure TchurrasqueiraFrm.btnSalvarItemClick(Sender: TObject);
begin
  chr.pManipulaPertence('salvar');
end;

procedure TchurrasqueiraFrm.DBGrid1DblClick(Sender: TObject);
begin
  chr.pManipulaPertence('editar');
end;

procedure TchurrasqueiraFrm.FormActivate(Sender: TObject);
begin
  chr.pIniciaTodosOsPageControl(churrasqueiraFrm);
  chr.pListar;
end;

procedure TchurrasqueiraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  chr.pFecharFormulario;
end;

procedure TchurrasqueiraFrm.FormCreate(Sender: TObject);
begin
  chr := TPertenceDeChurrasqueira.Create;
end;

procedure TchurrasqueiraFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(chr);
end;

procedure TchurrasqueiraFrm.Lista1DblClick(Sender: TObject);
begin
  chr.pManipula('editar','S');
  chr.pListarPertence;
end;

end.
