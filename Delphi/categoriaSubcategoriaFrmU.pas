unit categoriaSubcategoriaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, subcategoriaU;

type
  TcategoriaSubcategoriaFrm = class(TpadraoFrm)
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure pgc2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    cst : TSubcategoria;
  end;

var
  categoriaSubcategoriaFrm: TcategoriaSubcategoriaFrm;

implementation

uses categoriaDmU, subcategoriaDmU;

{$R *.dfm}

procedure TcategoriaSubcategoriaFrm.btn1Click(Sender: TObject);
begin
  cst.pListar;
end;

procedure TcategoriaSubcategoriaFrm.btnCancelarClick(Sender: TObject);
begin
  cst.pManipula('cancelar','S');
end;

procedure TcategoriaSubcategoriaFrm.btnCancelarItemClick(Sender: TObject);
begin
  cst.pManipulaSubcategoria('cancelar');
end;

procedure TcategoriaSubcategoriaFrm.btnExcluirClick(Sender: TObject);
begin
  cst.pManipula('excluir','S');
end;

procedure TcategoriaSubcategoriaFrm.btnExcluirItemClick(Sender: TObject);
begin
  cst.pManipulaSubcategoria('excluir');
end;

procedure TcategoriaSubcategoriaFrm.btnNovoClick(Sender: TObject);
begin
  cst.pManipula('novo','S');
  cst.pListarSubcategoria;
end;

procedure TcategoriaSubcategoriaFrm.btnNovoItemClick(Sender: TObject);
begin
  cst.pManipulaSubcategoria('novo');
end;

procedure TcategoriaSubcategoriaFrm.btnSalvarClick(Sender: TObject);
begin
  cst.pManipula('salvar','S');
end;

procedure TcategoriaSubcategoriaFrm.btnSalvarItemClick(Sender: TObject);
begin
  cst.pManipulaSubcategoria('salvar');
end;

procedure TcategoriaSubcategoriaFrm.DBGrid1DblClick(Sender: TObject);
begin
  cst.pManipulaSubcategoria('editar');
end;

procedure TcategoriaSubcategoriaFrm.FormActivate(Sender: TObject);
begin
  cst.pIniciaTodosOsPageControl(categoriaSubcategoriaFrm);
  cst.pListar;
end;

procedure TcategoriaSubcategoriaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cst.pFecharFormulario;
end;

procedure TcategoriaSubcategoriaFrm.FormCreate(Sender: TObject);
begin
  cst := TSubcategoria.Create;
end;

procedure TcategoriaSubcategoriaFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(cst);
end;

procedure TcategoriaSubcategoriaFrm.FormShow(Sender: TObject);
begin
  cst.pIniciaTodosOsPageControl(categoriaSubcategoriaFrm);
end;

procedure TcategoriaSubcategoriaFrm.Lista1DblClick(Sender: TObject);
begin
  cst.pManipula('editar','S');
  cst.pListarSubcategoria;
end;

procedure TcategoriaSubcategoriaFrm.pgc2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
