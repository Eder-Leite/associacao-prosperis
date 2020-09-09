unit usuarioFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, perfilDeUsuarioU;

type
  TusuarioFrm = class(TpadraoFrm)
    rg1: TRadioGroup;
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    check2: TDBCheckBox;
    check1: TDBCheckBox;
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
    Label5: TLabel;
    DBEdit5: TDBEdit;
    grp7: TGroupBox;
    combo1: TDBLookupListBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label6: TLabel;
    dbNQPDRUSUAR: TDBEdit;
    Label8: TLabel;
    dbNQPPRUSUAR: TDBEdit;
    Label9: TLabel;
    dbNQPARUSUAR: TDBEdit;
    procedure pgc2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  private
    { Private declarations }
  public
    { Public declarations }
    use : TPerfilDeUsuario;
  end;

var
  usuarioFrm: TusuarioFrm;

implementation

uses usuarioDmU, perfilDeUsuarioDmU;

{$R *.dfm}

procedure TusuarioFrm.btn1Click(Sender: TObject);
begin
  use.pListar;
end;

procedure TusuarioFrm.btnCancelarClick(Sender: TObject);
begin
  use.pManipula('cancelar','S');
end;

procedure TusuarioFrm.btnCancelarItemClick(Sender: TObject);
begin
  use.pManipulaPerfilDeUsuario('cancelar');
end;

procedure TusuarioFrm.btnExcluirClick(Sender: TObject);
begin
  use.pManipula('excluir','S');
end;

procedure TusuarioFrm.btnExcluirItemClick(Sender: TObject);
begin
  use.pManipulaPerfilDeUsuario('excluir');
end;

procedure TusuarioFrm.btnNovoClick(Sender: TObject);
begin
  use.pManipula('novo','S');
  use.pListarPerfilDeUsuario;
end;

procedure TusuarioFrm.btnNovoItemClick(Sender: TObject);
begin
  use.pManipulaPerfilDeUsuario('novo');
end;

procedure TusuarioFrm.btnSalvarClick(Sender: TObject);
begin
  use.pManipula('salvar','S');
end;

procedure TusuarioFrm.btnSalvarItemClick(Sender: TObject);
begin
  use.pManipulaPerfilDeUsuario('salvar');
end;

procedure TusuarioFrm.DBGrid1DblClick(Sender: TObject);
begin
  use.pManipulaPerfilDeUsuario('editar');
end;

procedure TusuarioFrm.FormActivate(Sender: TObject);
begin
  use.pIniciaTodosOsPageControl(usuarioFrm);
  use.pListar;
end;

procedure TusuarioFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  use.pFecharFormulario;
end;

procedure TusuarioFrm.FormCreate(Sender: TObject);
begin
  use := TPerfilDeUsuario.Create;
end;

procedure TusuarioFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(use);
end;

procedure TusuarioFrm.Lista1DblClick(Sender: TObject);
begin
  use.pManipula('editar','S');
  use.pListarPerfilDeUsuario;
end;

procedure TusuarioFrm.pgc2Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
