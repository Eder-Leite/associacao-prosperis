unit perfilDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TperfilDm = class(TdataModulePadraoDm)
    qryListaNCODIPERFI: TIntegerField;
    qryListaCDESCPERFI: TStringField;
    qryListaCSTATPERFI: TStringField;
    qryManipulaNCODIPERFI: TIntegerField;
    qryManipulaCDESCPERFI: TStringField;
    qryManipulaCSTATPERFI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  perfilDm: TperfilDm;

implementation

{$R *.dfm}

end.
