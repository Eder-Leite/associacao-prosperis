unit subcategoriaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TsubcategoriaDm = class(TdataModulePadraoDm)
    qryManipulaNCODISREDE: TIntegerField;
    qryManipulaCDESCSREDE: TStringField;
    qryManipulaNCODIGREDE: TIntegerField;
    qryListaNCODISREDE: TIntegerField;
    qryListaCDESCSREDE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  subcategoriaDm: TsubcategoriaDm;

implementation

{$R *.dfm}

end.
