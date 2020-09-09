unit reservaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, reservaU, sdiBase, DatBase, DatEdit, nExcel, prosperisFrmU;

type
  TreservaFrm = class(TpadraoFrm)
    rg1: TRadioGroup;
    grp4: TGroupBox;
    edt1: TEdit;
    grp5: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    grp6: TGroupBox;
    combo1: TDBLookupListBox;
    grp8: TGroupBox;
    dbmmo1: TDBMemo;
    GroupBox3: TGroupBox;
    combo2: TDBLookupListBox;
    grp7: TGroupBox;
    lbl3: TLabel;
    edt4: TEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    btnImprimir: TSpeedButton;
    btn5: TSpeedButton;
    btnXls: TSpeedButton;
    edt2: TDateEditPlus;
    edt3: TDateEditPlus;
    procedure dbmmo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure edt4KeyPress(Sender: TObject; var Key: Char);
    procedure btn5Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rsv: TReserva;
    procedure pXls;
  end;

var
  reservaFrm: TreservaFrm;

implementation

uses
  reservaDmU;

{$R *.dfm}

procedure TreservaFrm.btn1Click(Sender: TObject);
begin
  rsv.pListar;
end;

procedure TreservaFrm.btn2Click(Sender: TObject);
begin
  rsv.pMarcador(1);
end;

procedure TreservaFrm.btn3Click(Sender: TObject);
begin
  rsv.pMarcador(2);
end;

procedure TreservaFrm.btn4Click(Sender: TObject);
begin
  rsv.pMarcador(3);
end;

procedure TreservaFrm.btn5Click(Sender: TObject);
begin
  rsv.pMarcador(4);
end;

procedure TreservaFrm.btnCancelarClick(Sender: TObject);
begin
  rsv.pManipula('cancelar');
end;

procedure TreservaFrm.btnExcluirClick(Sender: TObject);
begin
  rsv.pManipula('excluir');
end;

procedure TreservaFrm.btnImprimirClick(Sender: TObject);
begin
  inherited;
  rsv.pPermissaoParaVisualizacaoImpressao;
  rsv.pImprimirTermo;
end;

procedure TreservaFrm.btnNovoClick(Sender: TObject);
begin
  rsv.pManipula('novo');
end;

procedure TreservaFrm.btnSalvarClick(Sender: TObject);
begin
  rsv.pManipula('salvar');
end;

procedure TreservaFrm.btnXlsClick(Sender: TObject);
begin
  inherited;
  pXls;
end;

procedure TreservaFrm.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  reservaDm.qryManipulaDFINARESER.Value := reservaDm.qryManipulaDINICRESER.Value;
end;

procedure TreservaFrm.dbmmo1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(key);
end;

procedure TreservaFrm.edt4Change(Sender: TObject);
begin
  rsv.pBuscaFuncionario('CRACHA', edt4.Text);
end;

procedure TreservaFrm.edt4KeyPress(Sender: TObject; var Key: Char);
begin

  if (Key <> '0') and (Key <> '1') and (Key <> '2') and (Key <> '3') and (Key <> '4') and (Key <> '5') and (Key <> '6') and (Key <> '7') and (Key <> '8') and (Key <> '9') and (word(key) <> vk_back) then
    Key := #0;

end;

procedure TreservaFrm.FormActivate(Sender: TObject);
begin
  rsv.pIniciaTodosOsPageControl(reservaFrm);
  rsv.pAlimentaPeriodo;
  rsv.pListarFiltroChurrasqueira;
  rsv.pListar;
  rsv.pValidaVisualizacaoDeColunaDeUsuario;
end;

procedure TreservaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  rsv.pFecharFormulario;
end;

procedure TreservaFrm.FormCreate(Sender: TObject);
begin
  rsv := TReserva.Create;
end;

procedure TreservaFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(rsv);
end;

procedure TreservaFrm.FormShow(Sender: TObject);
begin
  inherited;
  rg1.ItemIndex := 5;
end;

procedure TreservaFrm.Lista1DblClick(Sender: TObject);
begin
  rsv.pPermissaoParaVisualizacaoImpressao;
  rsv.pManipula('editar');
end;

procedure TreservaFrm.pXls;
var
  Book: IXLSWorkbook;
  caminho, nomeArquivo: string;

  function fiUsuario: string;
  begin
    Result := StringReplace(prosperisFrm.lbl1.Caption, 'Usuario: ', '', [rfReplaceAll]);
  end;

  procedure piPermissaoUsuario;
  begin
    with reservaDm.qryPermissaoUsuario do
    begin
      Close;
      ParamByName('USUARIO').Value := fiUsuario;
      Open;
    end;

    with reservaDm do
    begin
      if (qryPermissaoUsuarioCADMIUSUAR.Value <> 'S') then
        if (qryPermissaoUsuarioCPVNRUSUAR.Value <> 'S') then
        begin
          Application.MessageBox('Atenção usuário sem permissão para usar essa funcionalidade!', 'Atenção!', MB_OK + MB_ICONWARNING);
          Abort;
        end;
    end;

  end;

  function retornaPastaTemporaria: string;
  var
    DiretorioTemp: PChar;
    TempBuffer: Dword;
  begin
    TempBuffer := 255;
    GetMem(DiretorioTemp, 255);
    try
      GetTempPath(TempBuffer, DiretorioTemp);
      result := DiretorioTemp;
    finally
      FreeMem(DiretorioTemp);
    end;
  end;

  procedure abrirArquivo(fname: string);
  begin
    WinExec(PAnsiChar(AnsiString('cmd /c' + fname)), SW_HIDE);
  end;

  function CreateWorkbook: IXLSWorkbook;
  var
    Book: IXLSWorkbook;
    ws: IXLSWorksheet;
    linha: Integer;
  begin
  //Create workbook
    Book := TXLSWorkbook.Create;
  //Add new sheet
    ws := Book.Sheets.Add;
    ws.Name := 'Reserva das Churrasqueiras';

    nomeArquivo := 'churrasqueira.xls';
    caminho := retornaPastaTemporaria + nomeArquivo;

    linha := 2;

    with reservaDm do
    begin
      ws.Cells.Item[1, 1].Value := 'Código da Reserva';
      ws.Cells.Item[1, 1].Font.Bold := True;
      ws.Cells.Item[1, 1].AutoFit(True);

      ws.Cells.Item[1, 2].Value := 'Nome do Funcionário';
      ws.Cells.Item[1, 2].Font.Bold := True;
      ws.Cells.Item[1, 2].AutoFit(True);

      ws.Cells.Item[1, 3].Value := 'Churrasqueira Reservada';
      ws.Cells.Item[1, 3].Font.Bold := True;
      ws.Cells.Item[1, 3].AutoFit(True);

      ws.Cells.Item[1, 4].Value := 'Status da Reserva';
      ws.Cells.Item[1, 4].Font.Bold := True;
      ws.Cells.Item[1, 4].AutoFit(True);

      ws.Cells.Item[1, 5].Value := 'Data da Reserva';
      ws.Cells.Item[1, 5].Font.Bold := True;
      ws.Cells.Item[1, 5].AutoFit(True);

      ws.Cells.Item[1, 6].Value := 'Num. da Reserva';
      ws.Cells.Item[1, 6].Font.Bold := True;
      ws.Cells.Item[1, 6].AutoFit(True);

      qryLista.First;
      while not qryLista.Eof do
      begin
        //codigo
        ws.Cells.Item[linha, 1].Value := qryListaNCODIRESER.AsInteger;
        ///nome funcionario
        ws.Cells.Item[linha, 2].Value := qryListaNOME.AsString;
        ///churrasqueira
        ws.Cells.Item[linha, 3].Value := qryListaCDESCCHURR.AsString;
        ///status
        ws.Cells.Item[linha, 4].Value := qryListaCSTATRESER.AsString;
        ///data reserva
        ws.Cells.Item[linha, 5].Value := qryListaDINICRESER.AsDateTime;
        ws.Cells.Item[linha, 5].NumberFormat := 'DD/MM/YYYY';
        //quantidade
        ws.Cells.Item[linha, 6].Value := qryListaQUANTIDADE.AsInteger;

        inc(linha);
        qryLista.Next;
      end;
      qryLista.First;
    end;

  //Page setup
    ws.PageSetup.PrintGridlines := false;
    ws.PageSetup.CenterHorizontally := true;

    Result := Book;
  end;

begin
  piPermissaoUsuario;
  Book := CreateWorkbook;
  Book.SaveAs(caminho);
  abrirArquivo(caminho);
end;

end.

