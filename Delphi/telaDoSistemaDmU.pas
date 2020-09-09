unit telaDoSistemaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TtelaDoSistemaDm = class(TdataModulePadraoDm)
    qryListaNCODITELSI: TIntegerField;
    qryListaCDESCTELSI: TStringField;
    qryListaCSTATTELSI: TStringField;
    qryManipulaNCODITELSI: TIntegerField;
    qryManipulaCDESCTELSI: TStringField;
    qryManipulaCSTATTELSI: TStringField;
    qryManipulaNCODISISTE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaDoSistemaDm: TtelaDoSistemaDm;

implementation

{$R *.dfm}

end.
