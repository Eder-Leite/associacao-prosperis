unit churrasqueiraDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TchurrasqueiraDm = class(TdataModulePadraoDm)
    qryListaNCODICHURR: TIntegerField;
    qryListaCDESCCHURR: TStringField;
    qryManipulaNCODICHURR: TIntegerField;
    qryManipulaCDESCCHURR: TStringField;
    qryManipulaCSTATCHURR: TStringField;
    qryManipulaNVLTXCHURR: TFloatField;
    qryListaCSTATCHURR: TStringField;
    qryListaNVLTXCHURR: TFloatField;
    qryManipulaCDPSGCHURR: TStringField;
    qryManipulaCDPTECHURR: TStringField;
    qryManipulaCDPQACHURR: TStringField;
    qryManipulaCDPQICHURR: TStringField;
    qryManipulaCDPSECHURR: TStringField;
    qryManipulaCDPSACHURR: TStringField;
    qryManipulaCDPDOCHURR: TStringField;
    qryManipulaNVLTTCHURR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  churrasqueiraDm: TchurrasqueiraDm;

implementation

{$R *.dfm}

end.
