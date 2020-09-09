unit ReciboFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls, pngimage, DB, MemDS, DBAccess, Ora;

type
  TReciboFrm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    dbTipo: TQRLabel;
    dbData: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape5: TQRShape;
    dbValorTop: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    dbValorBot: TQRLabel;
    QRLabel22: TQRLabel;
    dbDescricao: TQRMemo;
    dbTipoRecibo: TQRMemo;
    dbCnpjCpfCliente: TQRLabel;
    QRLabel8: TQRLabel;
    QRMemo4: TQRMemo;
    QRLabel14: TQRLabel;
    dbCnpjUnidade: TQRLabel;
    dbTelefone: TQRLabel;
    dbEndereco: TQRLabel;
    dbCnpjIe: TQRLabel;
    QRCompositeReport: TQRCompositeReport;
    QuickRepEspaco: TQuickRep;
    TitleBand2: TQRBand;
    db: TQRLabel;
    QRLabel1: TQRLabel;
    dbValorExtenso: TQRMemo;
    qryRecibo: TOraQuery;
    procedure QRCompositeReportAddReports(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciboFrm: TReciboFrm;

implementation

{$R *.dfm}

procedure TReciboFrm.QRCompositeReportAddReports(Sender: TObject);
begin
  QRCompositeReport.Reports.Add(QuickRep1);
  QRCompositeReport.Reports.Add(QuickRepEspaco);
  QRCompositeReport.Reports.Add(QuickRep1);
end;

end.

