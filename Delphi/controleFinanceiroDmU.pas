unit controleFinanceiroDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TcontroleFinanceiroDm = class(TdataModulePadraoDm)
    qryListaNCODIFINAN: TFloatField;
    qryListaDDATAFINAN: TDateTimeField;
    qryListaCDESCFINAN: TStringField;
    qryListaCATEGORIA_SUBCATEGORIA: TStringField;
    qryListaCONTA: TStringField;
    qryListaVALOR: TFloatField;
    qryManipulaNCODIFINAN: TFloatField;
    qryManipulaDDATAFINAN: TDateTimeField;
    qryManipulaCTIPOFINAN: TStringField;
    qryManipulaCDESCFINAN: TStringField;
    qryManipulaNVALOFINAN: TFloatField;
    qryManipulaNCODIGREDE: TIntegerField;
    qryManipulaNCODISREDE: TIntegerField;
    qryManipulaNORIGCONFI: TIntegerField;
    qryManipulaNDESTCONFI: TIntegerField;
    qryListaFiltroCategoria: TOraQuery;
    qryListaFiltroSubcategoria: TOraQuery;
    qryListaFiltroConta: TOraQuery;
    dsListaFiltroCategoria: TOraDataSource;
    dsListaFiltroSubcategoria: TOraDataSource;
    dsListaFiltroConta: TOraDataSource;
    qryListaFiltroContaORDEM: TFloatField;
    qryListaFiltroContaCODIGO: TStringField;
    qryListaFiltroContaDESCRICAO: TStringField;
    qryListaFiltroContaSALDO: TFloatField;
    qryListaFiltroCategoriaORDEM: TFloatField;
    qryListaFiltroCategoriaCODIGO: TStringField;
    qryListaFiltroCategoriaDESCRICAO: TStringField;
    qryListaFiltroSubcategoriaORDEM: TFloatField;
    qryListaFiltroSubcategoriaCODIGO: TStringField;
    qryListaFiltroSubcategoriaDESCRICAO: TStringField;
    qryListaManipulaContaOrigem: TOraQuery;
    qryListaManipulaContaDestino: TOraQuery;
    qryListaManipulaCategoria: TOraQuery;
    qryListaManipulaSubcategoria: TOraQuery;
    dsListaManipulaContaOrigem: TOraDataSource;
    dsListaManipulaContaDestino: TOraDataSource;
    dsListaManipulaCategoria: TOraDataSource;
    dsListaManipulaSubcategoria: TOraDataSource;
    qryListaManipulaContaOrigemORDEM: TFloatField;
    qryListaManipulaContaOrigemCODIGO: TFloatField;
    qryListaManipulaContaOrigemDESCRICAO: TStringField;
    qryListaManipulaContaDestinoORDEM: TFloatField;
    qryListaManipulaContaDestinoCODIGO: TFloatField;
    qryListaManipulaContaDestinoDESCRICAO: TStringField;
    qryListaManipulaCategoriaORDEM: TFloatField;
    qryListaManipulaCategoriaCODIGO: TFloatField;
    qryListaManipulaCategoriaDESCRICAO: TStringField;
    qryListaManipulaSubcategoriaORDEM: TFloatField;
    qryListaManipulaSubcategoriaCODIGO: TFloatField;
    qryListaManipulaSubcategoriaDESCRICAO: TStringField;
    qryListaCTIPOFINAN: TStringField;
    qryListaNORIGCONFI: TIntegerField;
    qryListaNDESTCONFI: TIntegerField;
    qryRelSintetico: TOraQuery;
    qryRelSinteticoORDEM: TFloatField;
    qryRelSinteticoTIPO: TStringField;
    qryRelSinteticoCATEGORIA: TStringField;
    qryRelSinteticoVALOR: TFloatField;
    qryManipulaDDTVEFINAN: TDateTimeField;
    qryManipulaCMVCOFINAN: TStringField;
    qryManipulaCDOCUFINAN: TStringField;
    qryListaDDTVEFINAN: TDateTimeField;
    qryListaCDOCUFINAN: TStringField;
    qryListaCMVCOFINAN: TStringField;
    qryListaTIPO: TStringField;
    qryListaCDESCSREDE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controleFinanceiroDm: TcontroleFinanceiroDm;

implementation

{$R *.dfm}

end.
