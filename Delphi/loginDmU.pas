unit loginDmU;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Ora,
  IdBaseComponent, IdComponent, IdIPWatch;

type
  TloginDm = class(TDataModule)
    qryCorpoEmail: TOraQuery;
    qryConfigEmail: TOraQuery;
    qryConfigEmailMAIL_SERVER_HOST: TStringField;
    qryConfigEmailMAIL_SERVER_PORT: TFloatField;
    qryConfigEmailMAIL_ENABLE_SSL: TStringField;
    qryConfigEmailMAIL_AUTH: TStringField;
    qryConfigEmailMAIL_FROM: TStringField;
    qryConfigEmailMAIL_USERNAME: TStringField;
    qryConfigEmailMAIL_PASSWORD: TStringField;
    qryConfigEmailMAIL_SMTP_STARTTLS_ENABLE: TStringField;
    qryCorpoEmailRETORNO: TStringField;
    IdIPWatch: TIdIPWatch;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginDm: TloginDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
