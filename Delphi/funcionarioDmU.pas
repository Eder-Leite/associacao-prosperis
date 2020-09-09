unit funcionarioDmU;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS;

type
  TfuncionarioDm = class(TDataModule)
    qryLista: TOraQuery;
    dsLista: TOraDataSource;
    qryManipula: TOraQuery;
    dsManipula: TOraDataSource;
    qryListaNCODIFUNCI: TIntegerField;
    qryListaNEMPRFUNCI: TIntegerField;
    qryListaNPESSFUNCI: TIntegerField;
    qryListaCCRACFUNCI: TStringField;
    qryListaCNOMEFUNCI: TStringField;
    qryListaCSITUFUNCI: TStringField;
    qryListaCPRFRFUNCI: TStringField;
    qryListaPERMITE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funcionarioDm: TfuncionarioDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
