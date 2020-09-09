inherited avaliacaoFisicaFrm: TavaliacaoFisicaFrm
  Caption = 'Avaliacao fisica'
  ClientHeight = 720
  ClientWidth = 887
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 903
  ExplicitHeight = 759
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 887
    ExplicitWidth = 887
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
    inherited btnSair: TSpeedButton
      Left = 804
      ExplicitLeft = 804
    end
    inherited btn1: TSpeedButton
      OnClick = btn1Click
    end
  end
  inherited pnl2: TPanel
    Width = 887
    Height = 686
    ExplicitWidth = 887
    ExplicitHeight = 686
    inherited pgc1: TPageControl
      Width = 881
      Height = 680
      ActivePage = ts2
      ExplicitWidth = 881
      ExplicitHeight = 680
      inherited ts1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 605
        ExplicitHeight = 423
        inherited pnl3: TPanel
          Top = 88
          Width = 873
          Height = 564
          ExplicitTop = 88
          ExplicitWidth = 873
          ExplicitHeight = 564
          inherited grp2: TGroupBox
            Width = 867
            Height = 558
            ExplicitWidth = 867
            ExplicitHeight = 558
            inherited Lista1: TDBGrid
              Width = 857
              Height = 535
              DataSource = avaliacaoFisicaDm.dsLista
              OnDblClick = Lista1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NCODIAVAFI'
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
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DDATAAVAFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 600
                  Visible = True
                end>
            end
          end
        end
        inherited pnl4: TPanel
          Width = 873
          Height = 88
          ExplicitWidth = 873
          ExplicitHeight = 88
          inherited grp1: TGroupBox
            Width = 867
            Height = 82
            ExplicitWidth = 867
            ExplicitHeight = 82
            object grp4: TGroupBox
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 300
              Height = 59
              Align = alLeft
              Caption = 'Periodo: '
              TabOrder = 0
              object lbl1: TLabel
                Left = 16
                Top = 29
                Width = 29
                Height = 13
                Caption = 'Inicio:'
              end
              object lbl2: TLabel
                Left = 157
                Top = 29
                Width = 20
                Height = 13
                Caption = 'Fim:'
              end
              object edt1: TMaskEdit
                Left = 51
                Top = 25
                Width = 98
                Height = 21
                EditMask = '99/99/9999'
                MaxLength = 10
                TabOrder = 0
                Text = '  /  /    '
              end
              object edt2: TMaskEdit
                Left = 183
                Top = 25
                Width = 98
                Height = 21
                EditMask = '99/99/9999'
                MaxLength = 10
                TabOrder = 1
                Text = '  /  /    '
              end
            end
            object grp5: TGroupBox
              AlignWithMargins = True
              Left = 311
              Top = 18
              Width = 551
              Height = 59
              Align = alClient
              Caption = 'Funcionario: '
              TabOrder = 1
              ExplicitLeft = 337
              ExplicitWidth = 185
              ExplicitHeight = 105
              object edt3: TEdit
                Left = 14
                Top = 25
                Width = 515
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
              end
            end
          end
        end
      end
      inherited ts2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 873
        ExplicitHeight = 652
        inherited pnl5: TPanel
          Width = 873
          Height = 652
          ExplicitWidth = 873
          ExplicitHeight = 652
          inherited grp3: TGroupBox
            Width = 865
            Height = 644
            ExplicitWidth = 865
            ExplicitHeight = 644
            object Label1: TLabel
              Left = 24
              Top = 24
              Width = 37
              Height = 13
              Caption = 'Codigo:'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 207
              Top = 24
              Width = 27
              Height = 13
              Caption = 'Data:'
              FocusControl = DBEdit2
            end
            object DBEdit1: TDBEdit
              Tag = 99
              Left = 67
              Top = 21
              Width = 134
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'NCODIAVAFI'
              DataSource = avaliacaoFisicaDm.dsManipula
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 240
              Top = 21
              Width = 129
              Height = 21
              Hint = '"Data"'
              DataField = 'DDATAAVAFI'
              DataSource = avaliacaoFisicaDm.dsManipula
              TabOrder = 1
            end
            object check1: TDBCheckBox
              Left = 375
              Top = 23
              Width = 130
              Height = 17
              Caption = 'Pode utilizar a sauna?'
              DataField = 'CPUTSAVAFI'
              DataSource = avaliacaoFisicaDm.dsManipula
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object grp7: TGroupBox
              Left = 24
              Top = 48
              Width = 550
              Height = 105
              Caption = 'Funcionario: '
              TabOrder = 3
              object lbl3: TLabel
                Left = 16
                Top = 25
                Width = 38
                Height = 13
                Caption = 'Cracha:'
              end
              object Label5: TLabel
                Left = 16
                Top = 52
                Width = 31
                Height = 13
                Caption = 'Nome:'
                FocusControl = DBEdit5
              end
              object Label6: TLabel
                Left = 16
                Top = 79
                Width = 45
                Height = 13
                Caption = 'Situacao:'
                FocusControl = DBEdit6
              end
              object edt4: TEdit
                Left = 67
                Top = 21
                Width = 121
                Height = 21
                TabOrder = 0
                OnChange = edt4Change
                OnKeyPress = edt4KeyPress
              end
              object DBEdit5: TDBEdit
                Left = 67
                Top = 48
                Width = 462
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NOME'
                DataSource = avaliacaoFisicaDm.dsBuscaFuncionario
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 67
                Top = 75
                Width = 95
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'SITUACAO'
                DataSource = avaliacaoFisicaDm.dsBuscaFuncionario
                ReadOnly = True
                TabOrder = 2
              end
            end
            object grp6: TGroupBox
              Left = 24
              Top = 159
              Width = 550
              Height = 114
              Caption = 'Exames: '
              TabOrder = 4
              object check2: TDBCheckBox
                Left = 16
                Top = 23
                Width = 201
                Height = 17
                Caption = 'Precisa de exames complementares?'
                DataField = 'CEXCOAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbmmo1: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 46
                Width = 540
                Height = 63
                Align = alBottom
                BorderStyle = bsNone
                DataField = 'CQUEXAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 1
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox1: TGroupBox
              Left = 24
              Top = 279
              Width = 273
              Height = 58
              Caption = 'Pulso: '
              TabOrder = 5
              object DBMemo1: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CPULSAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox2: TGroupBox
              Left = 301
              Top = 279
              Width = 273
              Height = 58
              Caption = 'P.A.: '
              TabOrder = 6
              object DBMemo2: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAVPAAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox3: TGroupBox
              Left = 24
              Top = 338
              Width = 273
              Height = 58
              Caption = 'Ausculta pulmonar: '
              TabOrder = 7
              object DBMemo3: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAUPUAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox4: TGroupBox
              Left = 301
              Top = 338
              Width = 273
              Height = 58
              Caption = 'Ausculta cardiaca: '
              TabOrder = 8
              object DBMemo4: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAUCAAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox5: TGroupBox
              Left = 24
              Top = 402
              Width = 273
              Height = 58
              Caption = 'Maos: '
              TabOrder = 9
              object DBMemo5: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CMAOSAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox6: TGroupBox
              Left = 301
              Top = 402
              Width = 273
              Height = 58
              Caption = 'Pes: '
              TabOrder = 10
              object DBMemo6: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAPESAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox7: TGroupBox
              Left = 580
              Top = 8
              Width = 273
              Height = 58
              Caption = 'Axilas: '
              TabOrder = 11
              object DBMemo7: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAXILAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox8: TGroupBox
              Left = 580
              Top = 72
              Width = 273
              Height = 58
              Caption = 'Regiao inguinal: '
              TabOrder = 12
              object DBMemo8: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CREINAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox9: TGroupBox
              Left = 580
              Top = 136
              Width = 273
              Height = 58
              Caption = 'Manchas: '
              TabOrder = 13
              object DBMemo9: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CMANCAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox10: TGroupBox
              Left = 580
              Top = 200
              Width = 273
              Height = 58
              Caption = 'Couro cabeludo: '
              TabOrder = 14
              object DBMemo10: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CCOCAAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox11: TGroupBox
              Left = 580
              Top = 264
              Width = 273
              Height = 58
              Caption = 'Ouvidos: '
              TabOrder = 15
              object DBMemo11: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'COUVIAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox12: TGroupBox
              Left = 580
              Top = 328
              Width = 273
              Height = 58
              Caption = 'Nariz: '
              TabOrder = 16
              object DBMemo12: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CNARIAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox13: TGroupBox
              Left = 580
              Top = 392
              Width = 273
              Height = 58
              Caption = 'Garganta: '
              TabOrder = 17
              object DBMemo13: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CGARGAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox14: TGroupBox
              Left = 580
              Top = 456
              Width = 273
              Height = 58
              Caption = 'Dentes: '
              TabOrder = 18
              object DBMemo14: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CDENTAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox15: TGroupBox
              Left = 580
              Top = 520
              Width = 273
              Height = 58
              Caption = 'Aparelho genito urinario: '
              TabOrder = 19
              object DBMemo15: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CAPGUAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox16: TGroupBox
              Left = 580
              Top = 584
              Width = 273
              Height = 58
              Caption = 'Ant. morbidos familiares e pessoas de interesse: '
              TabOrder = 20
              object DBMemo16: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 263
                Height = 35
                Align = alClient
                BorderStyle = bsNone
                DataField = 'CANMFAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object GroupBox17: TGroupBox
              Left = 24
              Top = 466
              Width = 550
              Height = 176
              Caption = 'Observacoes: '
              TabOrder = 21
              object DBMemo17: TDBMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 540
                Height = 153
                Align = alClient
                BorderStyle = bsNone
                DataField = 'COBSEAVAFI'
                DataSource = avaliacaoFisicaDm.dsManipula
                ScrollBars = ssVertical
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
          end
        end
      end
    end
  end
end
