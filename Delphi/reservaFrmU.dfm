inherited reservaFrm: TreservaFrm
  Caption = 'Reserva'
  ClientWidth = 1017
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1033
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1017
    ExplicitWidth = 1017
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
      Left = 934
      ExplicitLeft = 901
    end
    inherited btn1: TSpeedButton
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object btnImprimir: TSpeedButton
      Tag = 6
      AlignWithMargins = True
      Left = 433
      Top = 3
      Width = 100
      Height = 28
      Hint = 'Imprimir'
      Align = alLeft
      Caption = 'Imprimir'
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFCC8F27CC8F27CC8F27CC8F27CC8F27CC8F27CC8F27CC8F27FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38BFFF38BFFF38BFF
        F38BFFF38BFFF38BFFF38BFFF38BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCC8F27F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7CC8F27FFFF
        FFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF38BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD7127
        9B53009B5300CC8F27F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7CC8F279F5A
        009F5A00AC6F28FFFFFFFFFFFFFFD58BFFB764FFB764FFF38BFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF38BFFBE64FFBE64FFD38CFFFFFFC1904EB47C2E
        DDBD87DDBD87863B1A863B1A863B1A863B1A863B1A863B1A863B1A863B1ADDBD
        87DEBD88B47C2EB88541FFF4B2FFE092FFFFEBFFFFEBEA9F7EEA9F7EEA9F7EEA
        9F7EEA9F7EEA9F7EEA9F7EEA9F7EFFFFEBFFFFECFFE092FFE9A59F5A00EED8AE
        EED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8AEEED8
        AEEFD9AFEFD9AF9F5A00FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE649F5A00EAD1A6
        EAD1A5E9CFA1EAD1A2EAD1A2EAD1A2EAD1A2EAD1A2EAD1A2EAD1A2EAD1A2E9CF
        A1EAD1A6EAD1A69F5A00FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE649F5A00EDDDC0
        EDDDC0E9D7B7E9D7B7E9D7B7E9D7B7E9D7B8E9D7B8E9D7B8E9D7B8E9D7B8E9D7
        B8EDDDC2EDDDC09F5A00FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE649F5A00EBE1D0
        EFE8DBEBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1D0EBE1
        D0EFE9DCEBE1D09F5A00FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE649F5A00F0EDE7
        F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0ED
        E7F0EDE7F0EDE79F5A00FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64C69B60BC8F54
        F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0ED
        E7F0EDE7BC8F54BF9050FFFFC4FFF3B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B8FFF4B4FFFFFFBC8849
        9F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A
        009F5A00BA884AFFFFFFFFFFFFFFECADFFBE64FFBE64FFBE64FFBE64FFBE64FF
        BE64FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFECAEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8B653F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7E7B44FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEBBE64F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7EBBE64FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEC677F0EDE7F0EDE7F0EDE7F0EDE7F0EDE7F7E6C3EFC779FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEC677F0EDE7F0EDE7F0EDE7F0EDE7F7E6C3EFC87BF2D293FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEC677EEC677EEC677EEC677EEC677EEC677F3D59AFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFDBFFFFDBFF
        FFDBFFFFDBFFFFDBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnImprimirClick
      ExplicitLeft = 552
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object btnXls: TSpeedButton
      Tag = 6
      AlignWithMargins = True
      Left = 539
      Top = 3
      Width = 100
      Height = 28
      Hint = 'Planilha'
      Align = alLeft
      Caption = 'Planilha'
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFEBE2DDDBCDC5DDD0C7DDD0C7DCD0C7DDD0C7DCD0C7DCD0C7DCCFC7DDD0
        C7DDD0C7DCCEC4F7F4F1FFFFFFFFFFFFFFFFFFECECECE2E2E2E3E3E3E3E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E1E1E1F9F9F9FFFFFFFFFFFF
        FFFFFFA88468C8A684C7A784C8A883C8A585C8A785C9A883C9A785C9A884C8A8
        84C6A482A77E57D7C8BDFFFFFFFFFFFFFFFFFFB0B0B0A1A1A1A4A4A4A4A4A4A4
        A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A3A3A3959595E1E1E1FFFFFFFFFFFF
        FFFFFF937567CFAD85B89980B0907EC4A482B0917EB2927FB2927FB2937FAE8F
        7BDBC4AAC9A886D9CBBFFFFFFFFFFFFFFFFFFFB2B2B2A7A7A7A6A6A6A4A4A4A8
        A8A8A4A4A4A5A5A5A5A5A5A5A5A5A4A4A4B0B0B0A4A4A4E3E3E3EBE3DDA48067
        AD8C74744C357C461B6A371A612D1675411B612F18633018633117643118602B
        0FC1A383CBAB8BDDCDC2EDEFF1AFAFAFB7B7B79999999191918F8F8F8D8D8D91
        91918D8D8D8E8E8E8E8E8E8E8E8E8D8D8DA8A8A8A5A5A5E4E4E4DCCEC5C5A37F
        EED7B9F3DFC1F1DEC0F3DEC2F6E2C5F4E0C5F6E1C4F5E3C4F5DFC1FCE8CA7642
        1EC3A78DCEAF90E0CFC4E1E3E5A0A0A0B2B2B2B5B5B5B6B6B6B6B6B6B7B7B7B7
        B7B7B7B7B7B7B7B7B6B6B6B9B9B9919191A9A9A9A6A6A6E4E4E4DED1C7C6A685
        D8BA9BAD7A54C49D7BC49D7BB07F59B1825CB1825CB08059C09876F3E0C57742
        1FC4AC93CFB295E0D0C3E3E5E7A3A3A3AEAEAE9F9F9FA7A7A7A7A7A7A0A0A0A1
        A1A1A1A1A1A0A0A0A6A6A6B7B7B7919191AAAAAAA6A6A6E4E4E4DFD0C7C6A787
        EDDBC1F0E0C9EFDEC6EFDEC5F0E0C9F0E0C8F0E0C9F0E1C8EDDBC2F1DFC67A44
        1FC6B09BD4B79CE2D0C3E4E6E7A3A3A3B5B5B5B6B6B6B6B6B6B6B6B6B6B6B6B6
        B6B6B6B6B6B6B6B6B5B5B5B6B6B6919191ABABABA7A7A7E4E4E4DFD1C7CAAD8E
        DBC0A4AE7D57B2835EB2835DB2835EB2835DB2835EB0805AC19C7AF6E8D27C46
        21C7B4A2D5BBA0E2D0C3E3E5E7A6A6A6AFAFAFA0A0A0A1A1A1A1A1A1A1A1A1A1
        A1A1A1A1A1A0A0A0A7A7A7B8B8B8929292ADADADA8A8A8E3E3E3E1D2C7CBAD91
        F0E4D0F4EBD8F4EAD9F5EAD8F4E9D8F4EAD9F2E7D4F3E8D5F1E5D2F4E8D67E47
        21C8B7A8D8BFA7E4D1C3E3E5E7A5A5A5B7B7B7B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B8B8B8B8B8B8B7B7B7B8B8B8939393ADADADA9A9A9E5E5E5E1D2C7CFB499
        DDC7B0AE7E59B38461B28460B38460B0825DC7A588C5A284C19C7DFAF2E4824A
        23C9BBAEDAC3ABE5D1C3E3E5E7A7A7A7B1B1B1A0A0A0A1A1A1A1A1A1A1A1A1A1
        A1A1A9A9A9A8A8A8A7A7A7BBBBBB939393AFAFAFABABABE4E4E4E2D2C6D1B69D
        F4ECDFF8F4EAF8F4E9F9F4E9F8F5EAF8F4E9F7F1E5F7F2E5F3EEE1F7F2E4844C
        24CABEB4DCC5B1E6D1C3E3E5E7A8A8A8B9B9B9BCBCBCBBBBBBBBBBBBBCBCBCBB
        BBBBBABABABBBBBBBABABABABABA949494AFAFAFACACACE4E4E4E4D3C6D5BCA4
        E0CFBDB28461B58967B38663B38663B38663B38663B1835FC5A285FDFBF2874F
        26CDC4BBDFCCB7E6D2C3E4E6E8A9A9A9B3B3B3A1A1A1A3A3A3A2A2A2A2A2A2A2
        A2A2A2A2A2A1A1A1A9A9A9BDBDBD949494B0B0B0ADADADE4E4E4E5D3C6D7C0A8
        EFE9DDDECBB9E7DACCF8F7EFFBFEF7FCFDF7FCFEF7FCFDF7F8F7EFFAFAF28B4F
        27B89E8BCBA686E7D2C2E3E6E8AAAAAAB9B9B9B2B2B2B5B5B5BDBDBDBEBEBEBD
        BDBDBEBEBEBDBDBDBCBCBCBDBDBD939393A1A1A19E9E9EE2E2E2E5D4C6D9C5B0
        D9C5B38F4B1AB28664FEFFFDAD7D58B48765B48765B28361C5A68BFDFFFCAA78
        58DDCBC3E4D0BFFCF7F4E1E2E3ACACACB1B1B1949494A2A2A2BFBFBFA0A0A0A2
        A2A2A2A2A2A1A1A1AAAAAABDBDBDACACACE3E3E3DFDFDFF8F8F8E6D4C6DDC8B6
        FEFFFFFFFFFFFEFFFFF7F9F4FEFFFFFDFFFFFDFFFFFDFFFFFCFFFDFDFFFFC295
        72FFFFFFFFFFFFFFFFFFE0E0E0ACACACBFBFBFC0C0C0BFBFBFBDBDBDBFBFBFBF
        BFBFBFBFBFBFBFBFBEBEBEBCBCBCB9B9B9FFFFFFFFFFFFFFFFFFEADACFB9865E
        C49A79C39977C39A77C39977C39977C39977C39977C39977C39977C39876C69D
        7DFFFFFFFFFFFFFFFFFFE2E2E29D9D9DA7A7A7A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A6A6A6A6A6A6A6A3A3A3BABABAFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnXlsClick
      ExplicitLeft = 617
      ExplicitTop = 0
    end
  end
  inherited pnl2: TPanel
    Width = 1017
    ExplicitWidth = 1017
    inherited pgc1: TPageControl
      Width = 1011
      ExplicitWidth = 1011
      inherited ts1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1003
        ExplicitHeight = 423
        inherited pnl3: TPanel
          Top = 161
          Width = 1003
          Height = 262
          TabOrder = 1
          ExplicitTop = 161
          ExplicitWidth = 1003
          ExplicitHeight = 262
          inherited grp2: TGroupBox
            Width = 997
            Height = 256
            ExplicitWidth = 997
            ExplicitHeight = 256
            inherited Lista1: TDBGrid
              Width = 987
              Height = 233
              DataSource = reservaDm.dsLista
              OnDblClick = Lista1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NCODIRESER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Codigo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DINICRESER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data da Reserva'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 145
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CDESCCHURR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Churrasqueira'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome do Funcion'#225'rio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 300
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CSTATRESER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Status'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CNOMEUSUAR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Usuario que realizou a reserva'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 225
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 0
                  Visible = True
                end>
            end
          end
        end
        inherited pnl4: TPanel
          Width = 1003
          Height = 161
          TabOrder = 0
          ExplicitWidth = 1003
          ExplicitHeight = 161
          inherited grp1: TGroupBox
            Width = 997
            Height = 155
            ExplicitWidth = 997
            ExplicitHeight = 155
            object rg1: TRadioGroup
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 309
              Height = 132
              Align = alLeft
              Caption = 'Status: '
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Autorizado'
                'Cancelado'
                'Pendente'
                'Rejeitado'
                'Aut. e assinado'
                'Livre'
                'Todos')
              TabOrder = 0
            end
            object grp4: TGroupBox
              AlignWithMargins = True
              Left = 522
              Top = 18
              Width = 463
              Height = 63
              Caption = 'Nome: '
              TabOrder = 2
              object edt1: TEdit
                Left = 12
                Top = 26
                Width = 437
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
              end
            end
            object grp5: TGroupBox
              AlignWithMargins = True
              Left = 320
              Top = 18
              Width = 197
              Height = 132
              Align = alLeft
              Caption = 'Periodo: '
              TabOrder = 1
              object lbl1: TLabel
                Left = 5
                Top = 37
                Width = 29
                Height = 13
                Caption = 'Inicio:'
              end
              object lbl2: TLabel
                Left = 5
                Top = 85
                Width = 20
                Height = 13
                Caption = 'Fim:'
              end
              object edt2: TDateEditPlus
                Left = 40
                Top = 34
                Width = 121
                Height = 21
                CustomDisplayFormat = 'dd/MM/yyyy'
                CustomEditFormat = 'dd/MM/yyyy'
                CalendarOptions.CustomDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
                GridParent.Version = '4.3.9'
                GridParent.ShowWhen = swCellFocused
                TabOrder = 0
              end
              object edt3: TDateEditPlus
                Left = 40
                Top = 82
                Width = 121
                Height = 21
                CustomDisplayFormat = 'dd/MM/yyyy'
                CustomEditFormat = 'dd/MM/yyyy'
                CalendarOptions.CustomDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
                GridParent.Version = '4.3.9'
                GridParent.ShowWhen = swCellFocused
                TabOrder = 1
              end
            end
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 523
              Top = 87
              Width = 462
              Height = 63
              Caption = 'Churrasqueira:'
              TabOrder = 3
              object combo2: TDBLookupListBox
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 452
                Height = 39
                Align = alClient
                BorderStyle = bsNone
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = reservaDm.dsListaFiltroChurrasqueira
                TabOrder = 0
              end
            end
          end
        end
      end
      inherited ts2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1003
        ExplicitHeight = 423
        inherited pnl5: TPanel
          Width = 1003
          ExplicitWidth = 1003
          inherited grp3: TGroupBox
            Width = 995
            ExplicitWidth = 995
            object Label1: TLabel
              Left = 32
              Top = 25
              Width = 37
              Height = 13
              Caption = 'Codigo:'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 215
              Top = 25
              Width = 85
              Height = 13
              Caption = 'Data da Reserva:'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 660
              Top = 24
              Width = 20
              Height = 13
              Caption = 'Fim:'
              FocusControl = DBEdit3
              Visible = False
            end
            object Label4: TLabel
              Left = 32
              Top = 52
              Width = 35
              Height = 13
              Caption = 'Status:'
              FocusControl = DBEdit4
            end
            object btn2: TSpeedButton
              Left = 215
              Top = 48
              Width = 100
              Height = 21
              Caption = 'Autorizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn2Click
            end
            object btn3: TSpeedButton
              Left = 432
              Top = 48
              Width = 100
              Height = 21
              Caption = 'Rejeitar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn3Click
            end
            object btn4: TSpeedButton
              Left = 541
              Top = 48
              Width = 100
              Height = 21
              Caption = 'Cancelar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn4Click
            end
            object Label7: TLabel
              Left = 428
              Top = 25
              Width = 103
              Height = 13
              Caption = 'Telefone de Contato:'
              FocusControl = DBEdit7
            end
            object btn5: TSpeedButton
              Left = 324
              Top = 48
              Width = 100
              Height = 21
              Caption = 'Aut. e assinado'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn5Click
            end
            object DBEdit1: TDBEdit
              Tag = 99
              Left = 75
              Top = 21
              Width = 134
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'NCODIRESER'
              DataSource = reservaDm.dsManipula
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 306
              Top = 21
              Width = 100
              Height = 21
              Hint = '"Inicio"'
              DataField = 'DINICRESER'
              DataSource = reservaDm.dsManipula
              TabOrder = 1
              OnExit = DBEdit2Exit
            end
            object DBEdit3: TDBEdit
              Tag = 1
              Left = 686
              Top = 21
              Width = 100
              Height = 21
              Hint = '"Fim"'
              DataField = 'DFINARESER'
              DataSource = reservaDm.dsManipula
              ReadOnly = True
              TabOrder = 7
              Visible = False
            end
            object DBEdit4: TDBEdit
              Left = 75
              Top = 48
              Width = 134
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'CSTATRESER'
              DataSource = reservaDm.dsManipula
              ReadOnly = True
              TabOrder = 3
            end
            object grp6: TGroupBox
              Left = 32
              Top = 71
              Width = 609
              Height = 105
              Caption = 'Churrasqueira: '
              TabOrder = 4
              object combo1: TDBLookupListBox
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 599
                Height = 78
                Hint = '"Churrasqueira"'
                Align = alClient
                BorderStyle = bsNone
                DataField = 'NCODICHURR'
                DataSource = reservaDm.dsManipula
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = reservaDm.dsListaManipulaChurrasqueira
                TabOrder = 0
              end
            end
            object grp8: TGroupBox
              Left = 32
              Top = 293
              Width = 609
              Height = 105
              Caption = 'Observa'#231#227'o:'
              TabOrder = 6
              object dbmmo1: TDBMemo
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 599
                Height = 82
                Hint = '"Observa'#231#227'o"'
                Align = alClient
                BorderStyle = bsNone
                DataField = 'COBSERESER'
                DataSource = reservaDm.dsManipula
                TabOrder = 0
                OnKeyPress = dbmmo1KeyPress
              end
            end
            object grp7: TGroupBox
              Left = 32
              Top = 182
              Width = 609
              Height = 105
              Caption = 'Funcionario: '
              TabOrder = 5
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
                Width = 518
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NOME'
                DataSource = reservaDm.dsBuscaFuncionario
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
                DataSource = reservaDm.dsBuscaFuncionario
                ReadOnly = True
                TabOrder = 2
              end
            end
            object DBEdit7: TDBEdit
              Tag = 1
              Left = 537
              Top = 21
              Width = 104
              Height = 21
              Hint = '"Contato"'
              DataField = 'CTECORESER'
              DataSource = reservaDm.dsManipula
              TabOrder = 2
            end
          end
        end
      end
    end
  end
end
