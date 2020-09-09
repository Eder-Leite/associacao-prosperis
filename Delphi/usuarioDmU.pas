unit usuarioDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TusuarioDm = class(TdataModulePadraoDm)
    qryListaNCODIUSUAR: TIntegerField;
    qryListaCNOMEUSUAR: TStringField;
    qryListaCLOGIUSUAR: TStringField;
    qryListaCADMIUSUAR: TStringField;
    qryListaCSTATUSUAR: TStringField;
    qryManipulaNCODIUSUAR: TIntegerField;
    qryManipulaCNOMEUSUAR: TStringField;
    qryManipulaCPASSUSUAR: TStringField;
    qryManipulaCEMAIUSUAR: TStringField;
    qryManipulaCADMIUSUAR: TStringField;
    qryManipulaCSTATUSUAR: TStringField;
    qryManipulaCLOGIUSUAR: TStringField;
    qryManipulaCPMRCUSUAR: TStringField;
    qryManipulaCPVNRUSUAR: TStringField;
    qryManipulaNQPPRUSUAR: TIntegerField;
    qryManipulaNQPARUSUAR: TIntegerField;
    qryManipulaNQPDRUSUAR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  usuarioDm: TusuarioDm;

implementation

{$R *.dfm}

end.
