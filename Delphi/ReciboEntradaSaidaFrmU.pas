unit ReciboEntradaSaidaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FnpNumericEdit;

type
  TReciboEntradaSaidaFrm = class(TForm)
    pnl1: TPanel;
    btnSair: TSpeedButton;
    btnRecibo: TSpeedButton;
    pnl: TPanel;
    edtData: TEdit;
    Label1: TLabel;
    edtTipo: TComboBox;
    Label2: TLabel;
    edtValor: TFnpNumericEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtDescricao: TMemo;
    Label5: TLabel;
    btnLimpar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pLimpar;
    procedure pImprimir;
  end;

var
  ReciboEntradaSaidaFrm: TReciboEntradaSaidaFrm;

implementation

uses
  ReciboFrmU;

{$R *.dfm}

procedure TReciboEntradaSaidaFrm.btnLimparClick(Sender: TObject);
begin
  pLimpar;
end;

procedure TReciboEntradaSaidaFrm.btnReciboClick(Sender: TObject);
begin
  pImprimir;
end;

procedure TReciboEntradaSaidaFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TReciboEntradaSaidaFrm.edtDataChange(Sender: TObject);

  function fMascaraData(edt, str: string): string;
  var
    i: integer;
  begin
    for i := 1 to Length(edt) do
    begin
      if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt) = Length(str) + 1) then
        delete(edt, i, 1);
      if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
        insert(str[i], edt, i);
    end;
    result := edt;
  end;

begin
  edtData.Text := fMascaraData(edtData.Text, '99/99/9999');
  edtData.SelStart := Length(edtData.Text);
end;

procedure TReciboEntradaSaidaFrm.edtDataExit(Sender: TObject);
var
  vData: TDate;
begin
  try
    vData := StrToDate(edtData.Text);
    edtData.Text := DateToStr(vData);
  except
    edtData.Text := DateToStr(Date);
  end;
end;

procedure TReciboEntradaSaidaFrm.FormShow(Sender: TObject);
begin
  pLimpar;
end;

procedure TReciboEntradaSaidaFrm.pImprimir;
begin
  try
    if ((edtValor.Value > 0) and (Length(Trim(edtDescricao.Lines.Text)) > 0) and (Length(Trim(edtNome.Text)) > 0)) then
    begin
      Application.CreateForm(TReciboFrm, ReciboFrm);

      with ReciboFrm do
      begin
        qryRecibo.ParamByName('P_DATA').AsDate := StrToDate(edtData.Text);

        if (edtTipo.ItemIndex = 0) then
          qryRecibo.ParamByName('P_TIPO').AsString := 'E'
        else
          qryRecibo.ParamByName('P_TIPO').AsString := 'S';

        qryRecibo.ParamByName('P_VALOR').AsFloat := edtValor.Value;
        qryRecibo.ParamByName('P_NOME').AsString := edtNome.Text;
        qryRecibo.ParamByName('P_DESCRICAO').AsString := edtDescricao.Lines.Text;
        qryRecibo.ParamByName('P_TIPO_RECIBO').AsString := '';
        qryRecibo.ParamByName('P_VALOR_EXTENSO').AsString := '';

        try
          qryRecibo.ExecSQL;

          Update;

          if (edtTipo.ItemIndex = 0) then
            dbTipo.Caption := 'RECIDO DE ENTRADA'
          else
            dbTipo.Caption := 'RECIDO DE SAIDA';

          dbValorBot.Caption := FormatFloat('R$ ###,###,##0.00', Abs(edtValor.Value));
          dbValorTop.Caption := FormatFloat('R$ ###,###,##0.00', Abs(edtValor.Value));

          dbData.Caption := edtData.Text;
          dbDescricao.Lines.Add(edtDescricao.Lines.Text);
          dbValorExtenso.Lines.Add(qryRecibo.ParamByName('P_VALOR_EXTENSO').AsString);
          dbTipoRecibo.Lines.Add(qryRecibo.ParamByName('P_TIPO_RECIBO').AsString);

          ReciboFrm.QRCompositeReport.Preview;
        except
          on E: Exception do
            Application.MessageBox(PChar(E.Message), 'Erro!', MB_OK + MB_ICONERROR);
        end;
      end;
    end
    else
      Application.MessageBox('Preencha todos os campos corretamente!', 'Atenção!', MB_OK + MB_ICONWARNING);

  finally
    FreeAndNil(ReciboFrm);
  end;
end;

procedure TReciboEntradaSaidaFrm.pLimpar;
begin
  edtNome.Clear;
  edtValor.Value := 0;
  edtDescricao.Clear;
  edtTipo.ItemIndex := 1;
  edtData.Text := DateToStr(Date);
end;

end.

