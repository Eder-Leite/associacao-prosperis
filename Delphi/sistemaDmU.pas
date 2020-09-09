unit sistemaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TsistemaDm = class(TdataModulePadraoDm)
    qryListaNCODISISTE: TIntegerField;
    qryListaCDESCSISTE: TStringField;
    qryListaCSTATSISTE: TStringField;
    qryManipulaNCODISISTE: TIntegerField;
    qryManipulaCDESCSISTE: TStringField;
    qryManipulaCSTATSISTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sistemaDm: TsistemaDm;

implementation

{$R *.dfm}

end.
