unit contaFinanceiraDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TcontaFinanceiraDm = class(TdataModulePadraoDm)
    qryListaNCODICONFI: TIntegerField;
    qryListaCDESCCONFI: TStringField;
    qryListaNSAATCONFI: TFloatField;
    qryManipulaNCODICONFI: TIntegerField;
    qryManipulaCDESCCONFI: TStringField;
    qryManipulaNSAATCONFI: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  contaFinanceiraDm: TcontaFinanceiraDm;

implementation

{$R *.dfm}

end.
