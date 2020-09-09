inherited contaFinanceiraFrm: TcontaFinanceiraFrm
  Caption = 'Conta financeira'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 635
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btn1: TSpeedButton
      OnClick = btn1Click
    end
  end
  inherited pnl2: TPanel
    inherited pgc1: TPageControl
      inherited ts1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 605
        ExplicitHeight = 423
        inherited pnl3: TPanel
          Top = 76
          Height = 347
          ExplicitTop = 76
          ExplicitHeight = 347
          inherited grp2: TGroupBox
            Height = 341
            ExplicitHeight = 341
            inherited Lista1: TDBGrid
              Height = 318
              DataSource = contaFinanceiraDm.dsLista
              OnDblClick = Lista1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NCODICONFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Codigo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CDESCCONFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descricao'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 360
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NSAATCONFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 120
                  Visible = True
                end>
            end
          end
        end
        inherited pnl4: TPanel
          Height = 76
          ExplicitHeight = 76
          inherited grp1: TGroupBox
            Height = 70
            ExplicitHeight = 70
            object grp4: TGroupBox
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 476
              Height = 47
              Align = alLeft
              Caption = 'Descricao: '
              TabOrder = 0
              object edt1: TEdit
                Left = 10
                Top = 20
                Width = 455
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
              end
            end
          end
        end
      end
      inherited ts2: TTabSheet
        inherited pnl5: TPanel
          inherited grp3: TGroupBox
            Tag = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            object Label1: TLabel
              Left = 24
              Top = 33
              Width = 37
              Height = 13
              Caption = 'Codigo:'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 24
              Top = 60
              Width = 50
              Height = 13
              Caption = 'Descricao:'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 24
              Top = 87
              Width = 30
              Height = 13
              Caption = 'Saldo:'
              FocusControl = DBEdit3
            end
            object DBEdit1: TDBEdit
              Tag = 99
              Left = 80
              Top = 29
              Width = 134
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'NCODICONFI'
              DataSource = contaFinanceiraDm.dsManipula
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 80
              Top = 56
              Width = 481
              Height = 21
              Hint = '"Descricao"'
              CharCase = ecUpperCase
              DataField = 'CDESCCONFI'
              DataSource = contaFinanceiraDm.dsManipula
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Tag = 1
              Left = 80
              Top = 83
              Width = 134
              Height = 21
              Hint = '"Saldo"'
              DataField = 'NSAATCONFI'
              DataSource = contaFinanceiraDm.dsManipula
              TabOrder = 2
            end
          end
        end
      end
    end
  end
end
