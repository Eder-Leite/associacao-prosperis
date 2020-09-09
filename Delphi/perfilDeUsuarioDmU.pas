unit perfilDeUsuarioDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TperfilDeUsuarioDm = class(TdataModulePadraoDm)
    qryListaNCODIPERUS: TIntegerField;
    qryListaCDESCPERFI: TStringField;
    qryManipulaNCODIPERUS: TIntegerField;
    qryManipulaNCODIUSUAR: TIntegerField;
    qryManipulaNCODIPERFI: TIntegerField;
    qryListaManipulaPerfil: TOraQuery;
    qryListaManipulaPerfilORDEM: TFloatField;
    qryListaManipulaPerfilCODIGO: TFloatField;
    qryListaManipulaPerfilDESCRICAO: TStringField;
    dsListaManipulaPerfil: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  perfilDeUsuarioDm: TperfilDeUsuarioDm;

implementation

{$R *.dfm}

end.
