unit processoPadraoFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls;

type
  TprocessoPadraoFrm = class(TForm)
    pnl1: TPanel;
    btnProcessar: TSpeedButton;
    btnSair: TSpeedButton;
    pnl2: TPanel;
    grp1: TGroupBox;
    lbl1: TLabel;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  processoPadraoFrm: TprocessoPadraoFrm;

implementation

{$R *.dfm}

procedure TprocessoPadraoFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
