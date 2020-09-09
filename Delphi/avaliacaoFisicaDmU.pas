unit avaliacaoFisicaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS;

type
  TavaliacaoFisicaDm = class(TdataModulePadraoDm)
    qryBuscaFuncionario: TOraQuery;
    qryBuscaFuncionarioNOME: TStringField;
    qryBuscaFuncionarioSITUACAO: TStringField;
    qryBuscaFuncionarioNCODIFUNCI: TIntegerField;
    qryBuscaFuncionarioCCRACFUNCI: TStringField;
    dsBuscaFuncionario: TOraDataSource;
    qryListaNCODIAVAFI: TIntegerField;
    qryListaDDATAAVAFI: TDateTimeField;
    qryListaNOME: TStringField;
    qryManipulaNCODIAVAFI: TIntegerField;
    qryManipulaDDATAAVAFI: TDateTimeField;
    qryManipulaCPUTSAVAFI: TStringField;
    qryManipulaCEXCOAVAFI: TStringField;
    qryManipulaCQUEXAVAFI: TStringField;
    qryManipulaCPULSAVAFI: TStringField;
    qryManipulaCAVPAAVAFI: TStringField;
    qryManipulaCAUPUAVAFI: TStringField;
    qryManipulaCAUCAAVAFI: TStringField;
    qryManipulaCMAOSAVAFI: TStringField;
    qryManipulaCAPESAVAFI: TStringField;
    qryManipulaCAXILAVAFI: TStringField;
    qryManipulaCREINAVAFI: TStringField;
    qryManipulaCMANCAVAFI: TStringField;
    qryManipulaCCOCAAVAFI: TStringField;
    qryManipulaCOUVIAVAFI: TStringField;
    qryManipulaCNARIAVAFI: TStringField;
    qryManipulaCGARGAVAFI: TStringField;
    qryManipulaCDENTAVAFI: TStringField;
    qryManipulaCAPGUAVAFI: TStringField;
    qryManipulaCANMFAVAFI: TStringField;
    qryManipulaCOBSEAVAFI: TStringField;
    qryManipulaNCODIFUNCI: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  avaliacaoFisicaDm: TavaliacaoFisicaDm;

implementation

{$R *.dfm}

end.
