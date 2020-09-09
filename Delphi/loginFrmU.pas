unit loginFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, pngimage, ExtCtrls, geralU, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessage,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, DB,
  MemDS, DBAccess, Ora, loginDmU, prosperisFrmU;

type
  TloginFrm = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    img1: TImage;
    grp1: TGroupBox;
    GroupBox1: TGroupBox;
    edt1: TEdit;
    edt2: TEdit;
    pnl3: TPanel;
    btnEntrar: TSpeedButton;
    btnSair: TSpeedButton;
    btnSenha: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure btnSenhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grl: TGeral;
    procedure pEnviarSenha(paEmail: string);
  end;

var
  loginFrm: TloginFrm;

implementation

{$R *.dfm}

procedure TloginFrm.btnEntrarClick(Sender: TObject);
begin
  grl.pValidaUsuario(edt1.Text, edt2.Text);
end;

procedure TloginFrm.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TloginFrm.btnSenhaClick(Sender: TObject);
begin
   pEnviarSenha(InputBox('Recuperação de Senha!', 'E-mail:', ''));
end;

procedure TloginFrm.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    grl.pValidaUsuario(edt1.Text, edt2.Text);
end;

procedure TloginFrm.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    grl.pValidaUsuario(edt1.Text, edt2.Text);
end;

procedure TloginFrm.FormCreate(Sender: TObject);
begin
  grl := TGeral.Create;
  grl.pBloqueiaAltF4(loginFrm);
  loginDm := TloginDm.Create(loginFrm);
end;

procedure TloginFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(grl);
end;

procedure TloginFrm.FormShow(Sender: TObject);
begin
  prosperisFrm.SaveEmailDll;
end;

procedure TloginFrm.pEnviarSenha(paEmail: string);
var
  AutenticouSMTP: boolean;
  idSMTP: TIdSMTP;
  idMESSAGE: TIdMessage;
  HandlerSSL: TIdSSLIOHandlerSocketOpenSSL;

  function fiUsuarioLogado: string;
  var
    I: DWord;
    user: string;
  begin
    I := 255;
    SetLength(user, I);
    Windows.GetUserName(PChar(user), I);
    user := string(PChar(user));
    result := user;
  end;

  function fiNomeComputador: string;
  var
    lpBuffer: PChar;
    nSize: DWord;
  const
    Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
  begin
    nSize := Buff_Size;
    lpBuffer := StrAlloc(Buff_Size);
    GetComputerName(lpBuffer, nSize);
    Result := string(lpBuffer);
    StrDispose(lpBuffer);
  end;

  function fiCorpoEmail(paEmail: string): string;
  begin
    Result := '';
    with loginDm, loginDm.qryCorpoEmail do
    begin
      Close;
      ParamByName('P_EMAIL').Value := paEmail;
      ParamByName('P_TERMINAL').Value := fiUsuarioLogado + ' - ' + fiNomeComputador + ' - ' + IdIPWatch.LocalIP;
      Open;
      Result := qryCorpoEmailRETORNO.Value;
    end;
  end;

  procedure piConfiguracaoEmail;
  begin
    with loginDm.qryConfigEmail do
    begin
      Close;
      Open;
    end;
  end;

begin

  with loginDm do
  begin

    if Length(Trim(fiCorpoEmail(paEmail))) > 0 then
    begin

      piConfiguracaoEmail;

      IdSMTP := TIdSMTP.Create(nil);
      HandlerSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

      if idSMTP.Connected then
      try
        idSMTP.Disconnect;
      except


      end;

        //Preparar Mensagem...
      IdMessage := TIdMessage.Create(nil);
      IdMessage.CharSet := 'UFT-8';
      IdMessage.Encoding := meDefault;
      IdMessage.ContentType := 'text/html; charset= utf-8';
      IdMessage.From.Name := 'Associação dos Funcionários da Cooperativa Nova Produtiva';
      IdMessage.From.Address := qryConfigEmailMAIL_FROM.AsString;
      IdMessage.Priority := mpNormal;
      IdMessage.Subject := 'Recuperação de senha.';
      IdMessage.Date := Now;

       //Add Destinatário(s)
      IdMessage.Recipients.Add;

      IdMessage.Recipients.EMailAddresses := paEmail;

       // corpo
      IdMessage.Body.Clear;
      IdMessage.Body.Add(fiCorpoEmail(paEmail));

    // autenticacao
      if qryConfigEmailMAIL_AUTH.Value = 'S' then
        idSMTP.AuthType := satDefault
      else
        IdSMTP.AuthType := satNone;

    //conexao segura SSL
      if qryConfigEmailMAIL_ENABLE_SSL.Value = 'S' then
      begin
        HandlerSSL.SSLOptions.Method := sslvSSLv23;
        HandlerSSL.SSLOptions.Mode := sslmClient;
        IdSMTP.IOHandler := HandlerSSL;
      end
      else
      begin
        IdSMTP.IOHandler := nil;
      end;


    //conexao tls
      if qryConfigEmailMAIL_SMTP_STARTTLS_ENABLE.Value = 'S' then
        idSMTP.UseTLS := utUseImplicitTLS
      else
        idSMTP.UseTLS := utNoTLSSupport;

      AutenticouSMTP := False;

    //Preparando Servidor...
      IdSMTP.Host := qryConfigEmailMAIL_SERVER_HOST.Value;
      IdSMTP.Port := qryConfigEmailMAIL_SERVER_PORT.AsInteger;
      IdSMTP.Username := qryConfigEmailMAIL_USERNAME.Value;
      IdSMTP.Password := qryConfigEmailMAIL_PASSWORD.Value;


       // efetua a conexao ao servidor SMTP
      if not IdSMTP.Connected then
      //try
      begin
        IdSMTP.Connect; // conecta ao SMTP
        AutenticouSMTP := IdSMTP.Authenticate // efetua a atenticacao e retorna o resultado para a variável
      end;

      // se a conexao foi bem sucedida, envia a mensagem
      if AutenticouSMTP and IdSMTP.Connected then
      begin
        IdSMTP.Send(IdMessage);
        Application.MessageBox('E-mail enviado com sucesso!', 'Confirmação!', MB_ICONINFORMATION + MB_OK);
      end;
      // depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;


    // liberação da DLL
      UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
      FreeAndNil(IdMessage);
      FreeAndNil(HandlerSSL);
      FreeAndNil(IdSMTP);

    end;
  end;

end;

end.

