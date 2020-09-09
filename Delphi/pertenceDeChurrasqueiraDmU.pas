unit pertenceDeChurrasqueiraDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TpertenceDeChurrasqueiraDm = class(TdataModulePadraoDm)
    qryListaNCODIPECHU: TIntegerField;
    qryListaNQTDEPECHU: TIntegerField;
    qryListaCDESCPECHU: TStringField;
    qryManipulaNCODIPECHU: TIntegerField;
    qryManipulaNQTDEPECHU: TIntegerField;
    qryManipulaCDESCPECHU: TStringField;
    qryManipulaNCODICHURR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pertenceDeChurrasqueiraDm: TpertenceDeChurrasqueiraDm;

implementation

{$R *.dfm}

end.
