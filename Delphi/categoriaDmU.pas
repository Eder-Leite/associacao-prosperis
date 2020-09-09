unit categoriaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TcategoriaDm = class(TdataModulePadraoDm)
    qryManipulaNCODIGREDE: TIntegerField;
    qryManipulaCDESCGREDE: TStringField;
    qryManipulaCTIPOGREDE: TStringField;
    qryListaNCODIGREDE: TIntegerField;
    qryListaCDESCGREDE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  categoriaDm: TcategoriaDm;

implementation

{$R *.dfm}

end.
