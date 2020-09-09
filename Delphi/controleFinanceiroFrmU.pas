unit controleFinanceiroFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, padraoFrmU, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  Mask, controleFinanceiroU, DBCtrls, nExcel;

type
  TcontroleFinanceiroFrm = class(TpadraoFrm)
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TMaskEdit;
    edt2: TMaskEdit;
    grp4: TGroupBox;
    grp6: TGroupBox;
    grp5: TGroupBox;
    grp7: TGroupBox;
    edt3: TEdit;
    grid1: TDBGrid;
    dblklst1: TDBLookupListBox;
    dblklst2: TDBLookupListBox;
    lbl3: TLabel;
    lbl4: TLabel;
    grp10: TGroupBox;
    grp11: TGroupBox;
    grp8: TGroupBox;
    grp9: TGroupBox;
    grp12: TGroupBox;
    grp13: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    rg1: TDBRadioGroup;
    combo3: TDBLookupListBox;
    combo1: TDBLookupListBox;
    combo2: TDBLookupListBox;
    combo4: TDBLookupListBox;
    btnImprimir: TSpeedButton;
    btnAnalitico: TSpeedButton;
    btnSintetico: TSpeedButton;
    Label1: TLabel;
    dbDDTVEFINAN: TDBEdit;
    dbchkCMVCOFINAN: TDBCheckBox;
    dbCDOCUFINAN: TDBEdit;
    Label2: TLabel;
    btnXls: TSpeedButton;
    btnRecibo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblklst1Click(Sender: TObject);
    procedure dblklst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure combo2Click(Sender: TObject);
    procedure combo2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAnaliticoClick(Sender: TObject);
    procedure btnSinteticoClick(Sender: TObject);
    procedure btnXlsClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctf: TControleFinanceiro;
    procedure pXls;
    procedure pImprimirRecibo;
  end;

var
  controleFinanceiroFrm: TcontroleFinanceiroFrm;

implementation

uses
  controleFinanceiroDmU, ReciboFrmU;

{$R *.dfm}

procedure TcontroleFinanceiroFrm.btn1Click(Sender: TObject);
begin
  ctf.pListar;
end;

procedure TcontroleFinanceiroFrm.btnAnaliticoClick(Sender: TObject);
begin
  ctf.pListar;
  ctf.pImprimir;
  ctf.pControlaVisualizacaoTipoRelatorio;
end;

procedure TcontroleFinanceiroFrm.btnCancelarClick(Sender: TObject);
begin
  ctf.pManipula('cancelar');
end;

procedure TcontroleFinanceiroFrm.btnExcluirClick(Sender: TObject);
begin
  ctf.pManipula('excluir');
end;

procedure TcontroleFinanceiroFrm.btnImprimirClick(Sender: TObject);
begin
  ctf.pControlaVisualizacaoTipoRelatorio;
end;

procedure TcontroleFinanceiroFrm.btnNovoClick(Sender: TObject);
begin
  ctf.pManipula('novo');
end;

procedure TcontroleFinanceiroFrm.btnReciboClick(Sender: TObject);
begin
  if (Lista1.DataSource.DataSet.RecordCount <> 0) then
    pImprimirRecibo;
end;

procedure TcontroleFinanceiroFrm.btnSalvarClick(Sender: TObject);
begin
  ctf.pManipula('salvar');
end;

procedure TcontroleFinanceiroFrm.btnSinteticoClick(Sender: TObject);
begin
  ctf.pListar;
  ctf.pImprimirSintetico;
  ctf.pControlaVisualizacaoTipoRelatorio;
end;

procedure TcontroleFinanceiroFrm.btnXlsClick(Sender: TObject);
begin
  if (Lista1.DataSource.DataSet.RecordCount <> 0) then
    pXls;
end;

procedure TcontroleFinanceiroFrm.combo2Click(Sender: TObject);
begin
  ctf.pListaManipulaSubcategoria;
end;

procedure TcontroleFinanceiroFrm.combo2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ctf.pListaManipulaSubcategoria;
end;

procedure TcontroleFinanceiroFrm.dblklst1Click(Sender: TObject);
begin
  ctf.pListaFiltroSubcategoria;
end;

procedure TcontroleFinanceiroFrm.dblklst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ctf.pListaFiltroSubcategoria;
end;

procedure TcontroleFinanceiroFrm.rg1Click(Sender: TObject);
begin
  ctf.pControlaTipo;
end;

procedure TcontroleFinanceiroFrm.FormActivate(Sender: TObject);
begin
  ctf.pIniciaTodosOsPageControl(controleFinanceiroFrm);
  ctf.pAlimentaPeriodo;
  ctf.pListaFiltroCategoria;
  ctf.pListaFiltroSubcategoria;
  ctf.pListaFiltroContas;
  ctf.pListar;
end;

procedure TcontroleFinanceiroFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ctf.pFecharFormulario;
end;

procedure TcontroleFinanceiroFrm.FormCreate(Sender: TObject);
begin
  ctf := TControleFinanceiro.Create;
end;

procedure TcontroleFinanceiroFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ctf);
end;

procedure TcontroleFinanceiroFrm.Lista1DblClick(Sender: TObject);
begin
  ctf.pManipula('editar');
end;

procedure TcontroleFinanceiroFrm.pImprimirRecibo;
begin
  try
    Application.CreateForm(TReciboFrm, ReciboFrm);

    with controleFinanceiroDm, ReciboFrm do
    begin
      qryRecibo.ParamByName('P_DATA').AsDate := qryListaDDATAFINAN.AsDateTime;
      qryRecibo.ParamByName('P_TIPO').AsString := qryListaCTIPOFINAN.AsString;
      qryRecibo.ParamByName('P_VALOR').AsFloat := qryListaVALOR.AsFloat;
      qryRecibo.ParamByName('P_NOME').AsString := qryListaCDESCSREDE.AsString;
      qryRecibo.ParamByName('P_DESCRICAO').AsString := qryListaCDESCFINAN.AsString;
      qryRecibo.ParamByName('P_TIPO_RECIBO').AsString := '';
      qryRecibo.ParamByName('P_VALOR_EXTENSO').AsString := '';

      try
        qryRecibo.ExecSQL;

        Update;

        if (qryListaCTIPOFINAN.AsString = 'E') then
          dbTipo.Caption := 'RECIDO DE ENTRADA'
        else
          dbTipo.Caption := 'RECIDO DE SAIDA';

        dbValorBot.Caption := FormatFloat('R$ ###,###,##0.00', Abs(qryListaVALOR.AsFloat));
        dbValorTop.Caption := FormatFloat('R$ ###,###,##0.00', Abs(qryListaVALOR.AsFloat));

        dbData.Caption := qryListaDDATAFINAN.AsString;
        dbDescricao.Lines.Add(qryListaCDESCFINAN.AsString);
        dbValorExtenso.Lines.Add(qryRecibo.ParamByName('P_VALOR_EXTENSO').AsString);
        dbTipoRecibo.Lines.Add(qryRecibo.ParamByName('P_TIPO_RECIBO').AsString);

        ReciboFrm.QRCompositeReport.Preview;
      except
        on E: Exception do
          Application.MessageBox(PChar(E.Message), 'Erro!', MB_OK + MB_ICONERROR);
      end;

    end;

  finally
    FreeAndNil(ReciboFrm);
  end;
end;

procedure TcontroleFinanceiroFrm.pXls;
var
  Book: IXLSWorkbook;
  caminho, nomeArquivo: string;

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
    ws.Name := 'Movimento Financeiro';

    nomeArquivo := 'movimentoFinanceiro.xls';
    caminho := retornaPastaTemporaria + nomeArquivo;

    linha := 2;

    with controleFinanceiroDm do
    begin
      ws.Cells.Item[1, 1].Value := 'Código';
      ws.Cells.Item[1, 1].Font.Bold := True;
      ws.Cells.Item[1, 1].AutoFit(True);

      ws.Cells.Item[1, 2].Value := 'Data Movimento';
      ws.Cells.Item[1, 2].Font.Bold := True;
      ws.Cells.Item[1, 2].AutoFit(True);

      ws.Cells.Item[1, 3].Value := 'Descrição';
      ws.Cells.Item[1, 3].Font.Bold := True;
      ws.Cells.Item[1, 3].AutoFit(True);

      ws.Cells.Item[1, 4].Value := 'Categoria\SubCategoria';
      ws.Cells.Item[1, 4].Font.Bold := True;
      ws.Cells.Item[1, 4].AutoFit(True);

      ws.Cells.Item[1, 5].Value := 'Data da Vencimento';
      ws.Cells.Item[1, 5].Font.Bold := True;
      ws.Cells.Item[1, 5].AutoFit(True);

      ws.Cells.Item[1, 6].Value := 'Conta Financeira';
      ws.Cells.Item[1, 6].Font.Bold := True;
      ws.Cells.Item[1, 6].AutoFit(True);

      ws.Cells.Item[1, 7].Value := 'Valor Movimento';
      ws.Cells.Item[1, 7].Font.Bold := True;
      ws.Cells.Item[1, 7].AutoFit(True);

      ws.Cells.Item[1, 8].Value := 'Tipo Movimento';
      ws.Cells.Item[1, 8].Font.Bold := True;
      ws.Cells.Item[1, 8].AutoFit(True);

      ws.Cells.Item[1, 9].Value := 'Documento';
      ws.Cells.Item[1, 9].Font.Bold := True;
      ws.Cells.Item[1, 9].AutoFit(True);

      ws.Cells.Item[1, 10].Value := 'Conciliado';
      ws.Cells.Item[1, 10].Font.Bold := True;
      ws.Cells.Item[1, 10].AutoFit(True);

      qryLista.First;
      while not qryLista.Eof do
      begin
        //codigo
        ws.Cells.Item[linha, 1].Value := qryListaNCODIFINAN.Value;
        ///data movimento
        ws.Cells.Item[linha, 2].Value := qryListaDDATAFINAN.Value;
        ws.Cells.Item[linha, 2].NumberFormat := 'DD/MM/YYYY';
        ///descricao
        ws.Cells.Item[linha, 3].Value := qryListaCDESCFINAN.Value;
        ///categoria/subcategoria
        ws.Cells.Item[linha, 4].Value := qryListaCATEGORIA_SUBCATEGORIA.Value;
        ///data vencimento
        ws.Cells.Item[linha, 5].Value := qryListaDDTVEFINAN.Value;
        ws.Cells.Item[linha, 5].NumberFormat := 'DD/MM/YYYY';
        //conta financeira
        ws.Cells.Item[linha, 6].Value := qryListaCONTA.Value;
        //valor movimento
        ws.Cells.Item[linha, 7].Value := qryListaVALOR.Value;
        //tipo movimento
        ws.Cells.Item[linha, 8].Value := qryListaTIPO.Value;
        //documento
        ws.Cells.Item[linha, 9].Value := qryListaCDOCUFINAN.Value;
        //conciliado
        ws.Cells.Item[linha, 10].Value := qryListaCMVCOFINAN.Value;

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
  Book := CreateWorkbook;
  Book.SaveAs(caminho);
  abrirArquivo(caminho);
end;

end.

