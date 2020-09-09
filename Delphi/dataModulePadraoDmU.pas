unit dataModulePadraoDmU;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS;

type
  TdataModulePadraoDm = class(TDataModule)
    qryLista: TOraQuery;
    qryManipula: TOraQuery;
    dsLista: TOraDataSource;
    dsManipula: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataModulePadraoDm: TdataModulePadraoDm;

implementation

uses prosperisFrmU;

{$R *.dfm}

end.
