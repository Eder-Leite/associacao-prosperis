unit avaliacaoFisicaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, avaliacaoFisicaU;

type
  TavaliacaoFisicaFrm = class(TpadraoFrm)
    grp4: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TMaskEdit;
    edt2: TMaskEdit;
    grp5: TGroupBox;
    edt3: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    check1: TDBCheckBox;
    grp7: TGroupBox;
    lbl3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt4: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    grp6: TGroupBox;
    check2: TDBCheckBox;
    dbmmo1: TDBMemo;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox3: TGroupBox;
    DBMemo3: TDBMemo;
    GroupBox4: TGroupBox;
    DBMemo4: TDBMemo;
    GroupBox5: TGroupBox;
    DBMemo5: TDBMemo;
    GroupBox6: TGroupBox;
    DBMemo6: TDBMemo;
    GroupBox7: TGroupBox;
    DBMemo7: TDBMemo;
    GroupBox8: TGroupBox;
    DBMemo8: TDBMemo;
    GroupBox9: TGroupBox;
    DBMemo9: TDBMemo;
    GroupBox10: TGroupBox;
    DBMemo10: TDBMemo;
    GroupBox11: TGroupBox;
    DBMemo11: TDBMemo;
    GroupBox12: TGroupBox;
    DBMemo12: TDBMemo;
    GroupBox13: TGroupBox;
    DBMemo13: TDBMemo;
    GroupBox14: TGroupBox;
    DBMemo14: TDBMemo;
    GroupBox15: TGroupBox;
    DBMemo15: TDBMemo;
    GroupBox16: TGroupBox;
    DBMemo16: TDBMemo;
    GroupBox17: TGroupBox;
    DBMemo17: TDBMemo;
    procedure dbmmo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure edt4KeyPress(Sender: TObject; var Key: Char);
    procedure edt4Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    avf : TAvaliacaoFisica;
  end;

var
  avaliacaoFisicaFrm: TavaliacaoFisicaFrm;

implementation

uses avaliacaoFisicaDmU;

{$R *.dfm}

procedure TavaliacaoFisicaFrm.btn1Click(Sender: TObject);
begin
  avf.pListar;
end;

procedure TavaliacaoFisicaFrm.btnCancelarClick(Sender: TObject);
begin
  avf.pManipula('cancelar');
end;

procedure TavaliacaoFisicaFrm.btnExcluirClick(Sender: TObject);
begin
  avf.pManipula('excluir');
end;

procedure TavaliacaoFisicaFrm.btnNovoClick(Sender: TObject);
begin
  avf.pManipula('novo');
end;

procedure TavaliacaoFisicaFrm.btnSalvarClick(Sender: TObject);
begin
  avf.pManipula('salvar');
end;

procedure TavaliacaoFisicaFrm.dbmmo1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(key);
end;

procedure TavaliacaoFisicaFrm.edt4Change(Sender: TObject);
begin
  avf.pBuscaFuncionario('CRACHA',edt4.Text);
end;

procedure TavaliacaoFisicaFrm.edt4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9')
  then
    Key:= #0;
end;

procedure TavaliacaoFisicaFrm.FormActivate(Sender: TObject);
begin
  avf.pIniciaTodosOsPageControl(avaliacaoFisicaFrm);
  avf.pAlimentaPeriodo;
  avf.pListar;
end;

procedure TavaliacaoFisicaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  avf.pFecharFormulario;
end;

procedure TavaliacaoFisicaFrm.FormCreate(Sender: TObject);
begin
  avf := TAvaliacaoFisica.Create;
end;

procedure TavaliacaoFisicaFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(avf);
end;

procedure TavaliacaoFisicaFrm.Lista1DblClick(Sender: TObject);
begin
    avf.pManipula('editar');
end;

end.
