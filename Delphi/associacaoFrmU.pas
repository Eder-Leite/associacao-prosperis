unit associacaoFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Buttons, geralU, pngimage, funcionarioDmU,
  funcionarioFrmU;

type
  TassociacaoFrm = class(TForm)
    pnl1: TPanel;
    btnSair: TSpeedButton;
    pnl2: TPanel;
    img1: TImage;
    mm1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentacoes1: TMenuItem;
    Churrasqueira1: TMenuItem;
    Reservadechurrasqueira1: TMenuItem;
    Avaliacaofisica1: TMenuItem;
    Processos1: TMenuItem;
    SincronizarcomRM1: TMenuItem;
    Funcionrio1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure Churrasqueira1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Reservadechurrasqueira1Click(Sender: TObject);
    procedure Avaliacaofisica1Click(Sender: TObject);
    procedure SincronizarcomRM1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grl: TGeral;
  end;

var
  associacaoFrm: TassociacaoFrm;

implementation

uses
  churrasqueiraFrmU, churrasqueiraDmU, reservaDmU, reservaFrmU,
  avaliacaoFisicaDmU, avaliacaoFisicaFrmU, sincronizaComRmDmU,
  sincronizaComRmFrmU, pertenceDeChurrasqueiraDmU;

{$R *.dfm}

procedure TassociacaoFrm.Avaliacaofisica1Click(Sender: TObject);
begin
  if grl.fPermissao('T', 'AVALIACAO FISICA') = False then
    Abort;

  if avaliacaoFisicaFrm = nil then
  begin
    avaliacaoFisicaFrm := TavaliacaoFisicaFrm.Create(associacaoFrm);
    avaliacaoFisicaDm := TavaliacaoFisicaDm.Create(avaliacaoFisicaFrm);
    avaliacaoFisicaFrm.Show;
  end
  else
  begin
    if avaliacaoFisicaFrm.Showing = False then
      avaliacaoFisicaFrm.Show;

    avaliacaoFisicaFrm.WindowState := wsNormal;
  end;
end;

procedure TassociacaoFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TassociacaoFrm.Churrasqueira1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'CONTA FINANCEIRA') = False then
    Abort;

  if churrasqueiraFrm = nil then
  begin
    churrasqueiraFrm := TchurrasqueiraFrm.Create(associacaoFrm);
    churrasqueiraDm := TchurrasqueiraDm.Create(churrasqueiraFrm);
    pertenceDeChurrasqueiraDm := TpertenceDeChurrasqueiraDm.Create(churrasqueiraFrm);
    churrasqueiraFrm.Show;
  end
  else
  begin
    if churrasqueiraFrm.Showing = False then
      churrasqueiraFrm.Show;

    churrasqueiraFrm.WindowState := wsNormal;
  end;

end;

procedure TassociacaoFrm.FormCreate(Sender: TObject);
begin
  grl := TGeral.Create;
end;

procedure TassociacaoFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(grl);
end;

procedure TassociacaoFrm.Funcionrio1Click(Sender: TObject);
begin
  if grl.fPermissao('T', 'CONTA FINANCEIRA') = False then
    Abort;

  if funcionarioFrm = nil then
  begin
    funcionarioFrm := TfuncionarioFrm.Create(funcionarioFrm);
    funcionarioDm := TfuncionarioDm.Create(churrasqueiraFrm);
    funcionarioFrm.Show;
  end
  else
  begin
    if funcionarioFrm.Showing = False then
      funcionarioFrm.Show;

    funcionarioFrm.WindowState := wsNormal;
  end;
end;

procedure TassociacaoFrm.Reservadechurrasqueira1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'RESERVA DE CHURRASQUEIRA') = False then
    Abort;

  if reservaFrm = nil then
  begin
    reservaFrm := TreservaFrm.Create(associacaoFrm);
    reservaDm := TreservaDm.Create(reservaFrm);
    reservaFrm.Show;
  end
  else
  begin
    if reservaFrm.Showing = False then
      reservaFrm.Show;

    reservaFrm.WindowState := wsNormal;
  end;

end;

procedure TassociacaoFrm.SincronizarcomRM1Click(Sender: TObject);
begin

  if grl.fPermissao('T', 'SINCRONIZA COM RM') = False then
    Abort;

  if sincronizaComRmFrm = nil then
  begin
    sincronizaComRmFrm := TsincronizaComRmFrm.Create(associacaoFrm);
    sincronizaComRmDm := TsincronizaComRmDm.Create(sincronizaComRmFrm);
    sincronizaComRmFrm.Show;
  end
  else
  begin
    if sincronizaComRmFrm.Showing = False then
      sincronizaComRmFrm.Show;

    sincronizaComRmFrm.WindowState := wsNormal;
  end;

end;

end.

