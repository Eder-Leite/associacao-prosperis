unit sincronizaComRmFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, processoPadraoFrmU, StdCtrls, Buttons, ExtCtrls, sincronizaComRmU;

type
  TsincronizaComRmFrm = class(TprocessoPadraoFrm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    scn : TSincronizaComRm;
  end;

var
  sincronizaComRmFrm: TsincronizaComRmFrm;

implementation

{$R *.dfm}

procedure TsincronizaComRmFrm.btnProcessarClick(Sender: TObject);
begin
  scn.pProcessar;
end;

procedure TsincronizaComRmFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  scn.pFecharFormulario;
end;

procedure TsincronizaComRmFrm.FormCreate(Sender: TObject);
begin
  scn := TSincronizaComRm.Create;
end;

procedure TsincronizaComRmFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(scn);
end;

end.
