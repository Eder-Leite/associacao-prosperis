unit contaFinanceiraFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, contaFinanceiraU;

type
  TcontaFinanceiraFrm = class(TpadraoFrm)
    grp4: TGroupBox;
    edt1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cfn : TContaFinanceira;
  end;

var
  contaFinanceiraFrm: TcontaFinanceiraFrm;

implementation

uses contaFinanceiraDmU;

{$R *.dfm}

procedure TcontaFinanceiraFrm.btn1Click(Sender: TObject);
begin
  cfn.pListar;
end;

procedure TcontaFinanceiraFrm.btnCancelarClick(Sender: TObject);
begin
  cfn.pManipula('cancelar');
end;

procedure TcontaFinanceiraFrm.btnExcluirClick(Sender: TObject);
begin
  cfn.pManipula('excluir');
end;

procedure TcontaFinanceiraFrm.btnNovoClick(Sender: TObject);
begin
  cfn.pManipula('novo');
end;

procedure TcontaFinanceiraFrm.btnSalvarClick(Sender: TObject);
begin
  cfn.pManipula('salvar');
end;

procedure TcontaFinanceiraFrm.FormActivate(Sender: TObject);
begin
  cfn.pIniciaTodosOsPageControl(contaFinanceiraFrm);
  cfn.pListar;
end;

procedure TcontaFinanceiraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cfn.pFecharFormulario;
end;

procedure TcontaFinanceiraFrm.FormCreate(Sender: TObject);
begin
  cfn := TContaFinanceira.Create;
end;

procedure TcontaFinanceiraFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(cfn);
end;

procedure TcontaFinanceiraFrm.FormShow(Sender: TObject);
begin
  cfn.pIniciaTodosOsPageControl(contaFinanceiraFrm);
end;

procedure TcontaFinanceiraFrm.Lista1DblClick(Sender: TObject);
begin
  cfn.pManipula('editar');
end;

end.
