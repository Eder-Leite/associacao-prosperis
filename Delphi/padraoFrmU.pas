unit padraoFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TpadraoFrm = class(TForm)
    pnl1: TPanel;
    btnNovo: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    pnl2: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl3: TPanel;
    pnl4: TPanel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    Lista1: TDBGrid;
    ts2: TTabSheet;
    pnl5: TPanel;
    grp3: TGroupBox;
    btn1: TSpeedButton;
    procedure pgc1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  padraoFrm: TpadraoFrm;

implementation

{$R *.dfm}

procedure TpadraoFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TpadraoFrm.FormActivate(Sender: TObject);
begin
  pgc1.TabIndex := 0;
end;

procedure TpadraoFrm.pgc1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
