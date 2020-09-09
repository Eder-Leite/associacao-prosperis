unit itemDoPerfilDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TitemDoPerfilDm = class(TdataModulePadraoDm)
    qryListaNCODIITPER: TIntegerField;
    qryListaCDESCSISTE: TStringField;
    qryListaCDESCTELSI: TStringField;
    qryManipulaNCODIITPER: TIntegerField;
    qryManipulaNCODIPERFI: TIntegerField;
    qryManipulaNCODITELSI: TIntegerField;
    qryManipulaNCODISISTE: TIntegerField;
    qryListaManipulaSistema: TOraQuery;
    qryListaManipulaTela: TOraQuery;
    dsListaManipulaSistema: TOraDataSource;
    dsListaManipulaTela: TOraDataSource;
    qryListaManipulaSistemaORDEM: TFloatField;
    qryListaManipulaSistemaCODIGO: TFloatField;
    qryListaManipulaSistemaDESCRICAO: TStringField;
    qryListaManipulaTelaORDEM: TFloatField;
    qryListaManipulaTelaCODIGO: TFloatField;
    qryListaManipulaTelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  itemDoPerfilDm: TitemDoPerfilDm;

implementation

{$R *.dfm}

end.
