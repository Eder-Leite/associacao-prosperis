unit reservaDmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataModulePadraoDmU, DB, DBAccess, Ora, MemDS, prosperisFrmU,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdIPWatch, RDprint;

type
  TreservaDm = class(TdataModulePadraoDm)
    qryListaDFINARESER: TDateTimeField;
    qryListaCDESCCHURR: TStringField;
    qryListaNOME: TStringField;
    qryListaCSTATRESER: TStringField;
    qryManipulaNCODIRESER: TIntegerField;
    qryManipulaDINICRESER: TDateTimeField;
    qryManipulaDFINARESER: TDateTimeField;
    qryManipulaCSTATRESER: TStringField;
    qryManipulaCOBSERESER: TStringField;
    qryManipulaNCODICHURR: TIntegerField;
    qryManipulaNCODIFUNCI: TIntegerField;
    qryListaFiltroChurrasqueira: TOraQuery;
    qryListaFiltroChurrasqueiraORDEM: TFloatField;
    qryListaFiltroChurrasqueiraCODIGO: TStringField;
    qryListaFiltroChurrasqueiraDESCRICAO: TStringField;
    dsListaFiltroChurrasqueira: TOraDataSource;
    qryListaManipulaChurrasqueira: TOraQuery;
    qryBuscaFuncionario: TOraQuery;
    dsListaManipulaChurrasqueira: TOraDataSource;
    dsBuscaFuncionario: TOraDataSource;
    qryListaManipulaChurrasqueiraORDEM: TFloatField;
    qryListaManipulaChurrasqueiraCODIGO: TFloatField;
    qryListaManipulaChurrasqueiraDESCRICAO: TStringField;
    qryPermissaoUsuario: TOraQuery;
    qryPermissaoUsuarioCADMIUSUAR: TStringField;
    qryPermissaoUsuarioCPMRCUSUAR: TStringField;
    qryBuscaFuncionarioNOME: TStringField;
    qryBuscaFuncionarioSITUACAO: TStringField;
    qryBuscaFuncionarioNCODIFUNCI: TIntegerField;
    qryBuscaFuncionarioCCRACFUNCI: TStringField;
    qryPermissaoUsuarioNCODIUSUAR: TIntegerField;
    qryManipulaNCODIUSUAR: TIntegerField;
    qryPermissaoUsuarioCPVNRUSUAR: TStringField;
    qryPermiteFazerReservaNoPeriodo: TOraQuery;
    qryPermiteFazerReservaNoPeriodoRESULTADO: TStringField;
    qryManipulaCTECORESER: TStringField;
    qryListaImprimiPertences: TOraQuery;
    qryListaImprimiPertencesNQTDEPECHU: TIntegerField;
    qryListaImprimiPertencesCDESCPECHU: TStringField;
    qryListaCNOMEUSUAR: TStringField;
    qryPermissaoAutorizarReserva: TOraQuery;
    qryPermissaoAutorizarReservaRETORNO: TStringField;
    qryPermissaoPendenteReserva: TOraQuery;
    qryPermissaoPendenteReservaRETORNO: TStringField;
    qryQuantidadeMaximaDias: TOraQuery;
    qryQuantidadeMaximaDiasRETORNO: TStringField;
    idSMTP: TIdSMTP;
    idMESSAGE: TIdMessage;
    HandlerSSL: TIdSSLIOHandlerSocketOpenSSL;
    qryConfigEmail: TOraQuery;
    qryConfigEmailMAIL_SERVER_HOST: TStringField;
    qryConfigEmailMAIL_SERVER_PORT: TFloatField;
    qryConfigEmailMAIL_ENABLE_SSL: TStringField;
    qryConfigEmailMAIL_AUTH: TStringField;
    qryConfigEmailMAIL_FROM: TStringField;
    qryConfigEmailMAIL_USERNAME: TStringField;
    qryConfigEmailMAIL_PASSWORD: TStringField;
    qryConfigEmailMAIL_SMTP_STARTTLS_ENABLE: TStringField;
    qryEmailAdministradores: TOraQuery;
    qryEmailAdministradoresRETORNO: TStringField;
    qryCorpoEmail: TOraQuery;
    qryCorpoEmailRETORNO: TStringField;
    qryEmailUsuario: TOraQuery;
    qryEmailUsuarioEMAIL: TStringField;
    qryPermissaoUsuarioCEMAIUSUAR: TStringField;
    qryEmailUsuarioSTATUS: TStringField;
    qryStatusEmail: TOraQuery;
    qryStatusEmailCSTATRESER: TStringField;
    qryStatusEmailCSEEMRESER: TStringField;
    qryAtualizaStatusEmail: TOraQuery;
    qryManipulaCSEEMRESER: TStringField;
    qryManipulaCTERURESER: TStringField;
    IdIPWatch: TIdIPWatch;
    qryVerificaChurrasqueira: TOraQuery;
    qryVerificaChurrasqueiraRETORNO: TFloatField;
    RDprint1: TRDprint;
    qryListaNCODIUSUAR: TIntegerField;
    qryListaNCODIRESER: TIntegerField;
    qryListaNCODICHURR: TIntegerField;
    qryListaDINICRESER: TStringField;
    qryVerificaDiaChurrasqueria: TOraQuery;
    qryVerificaDiaChurrasqueriaRETORNO: TStringField;
    qryListaTAXA: TFloatField;
    qryListaQUANTIDADE: TFloatField;
    qryListaEXTENSO: TStringField;
    qryListaCNOMEFUNCI: TStringField;
    qryValidaTaxa: TOraQuery;
    qryValidaTaxaRETORNO: TFloatField;
    qryManipulaNUSUARESER: TIntegerField;
    qryListaNPESSFUNCI: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reservaDm: TreservaDm;

implementation

{$R *.dfm}

end.
