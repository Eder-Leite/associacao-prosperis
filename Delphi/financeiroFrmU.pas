unit financeiroFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, pngimage, Buttons, geralU;

type
  TfinanceiroFrm = class(TForm)
    mm1: TMainMenu;
    Cadastros1: TMenuItem;
    Contafinanceira1: TMenuItem;
    Movimentacoes1: TMenuItem;
    Controlefinanceiro1: TMenuItem;
    pnl1: TPanel;
    btnSair: TSpeedButton;
    pnl2: TPanel;
    img1: TImage;
    CategoriaSubcategoria1: TMenuItem;
    Recibo1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure Contafinanceira1Click(Sender: TObject);
    procedure CategoriaSubcategoria1Click(Sender: TObject);
    procedure Controlefinanceiro1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grl: TGeral;
  end;

var
  financeiroFrm: TfinanceiroFrm;

implementation

uses
  contaFinanceiraFrmU, contaFinanceiraDmU, categoriaSubcategoriaFrmU,
  ReciboEntradaSaidaFrmU, categoriaDmU, subcategoriaDmU, controleFinanceiroDmU,
  controleFinanceiroFrmU;

{$R *.dfm}

procedure TfinanceiroFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfinanceiroFrm.CategoriaSubcategoria1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'CATEGORIA / SUBCATEGORIA') = False then
    Abort;

  if categoriaSubcategoriaFrm = nil then
  begin
    categoriaSubcategoriaFrm := TcategoriaSubcategoriaFrm.Create(financeiroFrm);
    categoriaDm := TcategoriaDm.Create(categoriaSubcategoriaFrm);
    subcategoriaDm := TsubcategoriaDm.Create(categoriaSubcategoriaFrm);
    categoriaSubcategoriaFrm.Show;
  end
  else
  begin
    if categoriaSubcategoriaFrm.Showing = False then
      categoriaSubcategoriaFrm.Show;

    categoriaSubcategoriaFrm.WindowState := wsNormal;
  end;

end;

procedure TfinanceiroFrm.Contafinanceira1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'CONTA FINANCEIRA') = False then
    Abort;

  if contaFinanceiraFrm = nil then
  begin
    contaFinanceiraFrm := TcontaFinanceiraFrm.Create(financeiroFrm);
    contaFinanceiraDm := TcontaFinanceiraDm.Create(contaFinanceiraFrm);
    contaFinanceiraFrm.Show;
  end
  else
  begin
    if contaFinanceiraFrm.Showing = False then
      contaFinanceiraFrm.Show;

    contaFinanceiraFrm.WindowState := wsNormal;
  end;

end;

procedure TfinanceiroFrm.Controlefinanceiro1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'CONTROLE FINANCEIRO') = False then
    Abort;

  if controleFinanceiroFrm = nil then
  begin
    controleFinanceiroFrm := TcontroleFinanceiroFrm.Create(financeiroFrm);
    controleFinanceiroDm := TcontroleFinanceiroDm.Create(controleFinanceiroFrm);
    controleFinanceiroFrm.Show;
  end
  else
  begin
    if controleFinanceiroFrm.Showing = False then
      controleFinanceiroFrm.Show;

    controleFinanceiroFrm.WindowState := wsNormal;
  end;

end;

procedure TfinanceiroFrm.FormCreate(Sender: TObject);
begin
  grl := TGeral.Create;
end;

procedure TfinanceiroFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(grl);
end;

procedure TfinanceiroFrm.Recibo1Click(Sender: TObject);
begin
  Application.CreateForm(TReciboEntradaSaidaFrm, ReciboEntradaSaidaFrm);
  ReciboEntradaSaidaFrm.ShowModal;
  FreeAndNil(ReciboEntradaSaidaFrm);
end;

end.

