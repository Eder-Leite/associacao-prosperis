inherited controleFinanceiroFrm: TcontroleFinanceiroFrm
  Caption = 'Controle financeiro'
  ClientWidth = 994
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1010
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 994
    ExplicitWidth = 994
    inherited btnNovo: TSpeedButton
      Width = 75
      OnClick = btnNovoClick
      ExplicitWidth = 75
    end
    inherited btnExcluir: TSpeedButton
      Left = 84
      Width = 75
      OnClick = btnExcluirClick
      ExplicitLeft = 84
      ExplicitTop = 3
      ExplicitWidth = 75
    end
    inherited btnSalvar: TSpeedButton
      Left = 165
      Width = 75
      OnClick = btnSalvarClick
      ExplicitLeft = 165
      ExplicitWidth = 75
    end
    inherited btnCancelar: TSpeedButton
      Left = 246
      Width = 75
      OnClick = btnCancelarClick
      ExplicitLeft = 246
      ExplicitTop = 3
      ExplicitWidth = 75
    end
    inherited btnSair: TSpeedButton
      Left = 911
      ExplicitLeft = 911
    end
    inherited btn1: TSpeedButton
      Left = 327
      Width = 75
      OnClick = btn1Click
      ExplicitLeft = 327
      ExplicitWidth = 75
    end
    object btnImprimir: TSpeedButton
      Tag = 6
      AlignWithMargins = True
      Left = 595
      Top = 3
      Width = 100
      Height = 28
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
      OnClick = btnImprimirClick
      ExplicitLeft = 552
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object btnAnalitico: TSpeedButton
      AlignWithMargins = True
      Left = 701
      Top = 3
      Width = 100
      Height = 28
      Align = alLeft
      Caption = 'Analitico'
      Flat = True
      Visible = False
      OnClick = btnAnaliticoClick
      ExplicitLeft = 568
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object btnSintetico: TSpeedButton
      AlignWithMargins = True
      Left = 807
      Top = 3
      Width = 100
      Height = 28
      Align = alLeft
      Caption = 'Sintetico'
      Flat = True
      Visible = False
      OnClick = btnSinteticoClick
      ExplicitLeft = 688
      ExplicitTop = 16
      ExplicitHeight = 22
    end
    object btnXls: TSpeedButton
      Tag = 6
      AlignWithMargins = True
      Left = 408
      Top = 3
      Width = 75
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
      ExplicitLeft = 378
      ExplicitTop = 0
    end
    object btnRecibo: TSpeedButton
      Tag = 6
      AlignWithMargins = True
      Left = 489
      Top = 3
      Width = 100
      Height = 28
      Align = alLeft
      Caption = 'Recibo'
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
      OnClick = btnReciboClick
      ExplicitLeft = 552
      ExplicitTop = 8
      ExplicitHeight = 22
    end
  end
  inherited pnl2: TPanel
    Width = 994
    ExplicitWidth = 994
    inherited pgc1: TPageControl
      Width = 988
      ExplicitWidth = 988
      inherited ts1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 980
        ExplicitHeight = 423
        inherited pnl3: TPanel
          Top = 249
          Width = 980
          Height = 174
          ExplicitTop = 249
          ExplicitWidth = 980
          ExplicitHeight = 174
          inherited grp2: TGroupBox
            Width = 974
            Height = 168
            ExplicitWidth = 974
            ExplicitHeight = 168
            inherited Lista1: TDBGrid
              Width = 964
              Height = 145
              DataSource = controleFinanceiroDm.dsLista
              OnDblClick = Lista1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NCODIFINAN'
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
                  FieldName = 'DDATAFINAN'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CDESCFINAN'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descricao'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 222
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CATEGORIA_SUBCATEGORIA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Categoria / Subcategoria'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 222
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Conta'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 222
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        inherited pnl4: TPanel
          Width = 980
          Height = 249
          ExplicitWidth = 980
          ExplicitHeight = 249
          inherited grp1: TGroupBox
            Width = 974
            Height = 243
            ExplicitWidth = 974
            ExplicitHeight = 243
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 7
              Top = 18
              Width = 154
              Height = 95
              Caption = 'Periodo: '
              TabOrder = 0
              object lbl1: TLabel
                Left = 15
                Top = 31
                Width = 29
                Height = 13
                Caption = 'Inicio:'
              end
              object lbl2: TLabel
                Left = 15
                Top = 58
                Width = 20
                Height = 13
                Caption = 'Fim:'
              end
              object edt1: TMaskEdit
                Left = 50
                Top = 27
                Width = 81
                Height = 21
                Hint = '"Inicio"'
                EditMask = '99/99/9999'
                MaxLength = 10
                TabOrder = 0
                Text = '  /  /    '
              end
              object edt2: TMaskEdit
                Left = 50
                Top = 54
                Width = 81
                Height = 21
                Hint = '"Fim"'
                EditMask = '99/99/9999'
                MaxLength = 10
                TabOrder = 1
                Text = '  /  /    '
              end
            end
            object grp4: TGroupBox
              AlignWithMargins = True
              Left = 167
              Top = 18
              Width = 390
              Height = 95
              Caption = 'Categoria: '
              TabOrder = 1
              object dblklst1: TDBLookupListBox
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 380
                Height = 65
                Align = alClient
                BorderStyle = bsNone
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaFiltroCategoria
                TabOrder = 0
                OnClick = dblklst1Click
                OnKeyUp = dblklst1KeyUp
              end
            end
            object grp6: TGroupBox
              AlignWithMargins = True
              Left = 563
              Top = 18
              Width = 390
              Height = 95
              Caption = 'Subcategoria: '
              TabOrder = 2
              object dblklst2: TDBLookupListBox
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 380
                Height = 65
                Align = alClient
                BorderStyle = bsNone
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaFiltroSubcategoria
                TabOrder = 0
              end
            end
            object grp5: TGroupBox
              AlignWithMargins = True
              Left = 7
              Top = 119
              Width = 490
              Height = 117
              Caption = 'Contas: '
              TabOrder = 3
              object grid1: TDBGrid
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 480
                Height = 94
                Align = alClient
                BorderStyle = bsNone
                DataSource = controleFinanceiroDm.dsListaFiltroConta
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Descricao'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clMaroon
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 313
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SALDO'
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
            object grp7: TGroupBox
              Left = 503
              Top = 119
              Width = 450
              Height = 117
              Caption = 'Descricao: '
              TabOrder = 4
              object edt3: TEdit
                Left = 24
                Top = 54
                Width = 401
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
        ExplicitWidth = 980
        ExplicitHeight = 423
        inherited pnl5: TPanel
          Width = 980
          ExplicitWidth = 980
          inherited grp3: TGroupBox
            Width = 972
            ExplicitWidth = 972
            object lbl3: TLabel
              Left = 40
              Top = 32
              Width = 37
              Height = 13
              Caption = 'Codigo:'
            end
            object lbl4: TLabel
              Left = 210
              Top = 32
              Width = 27
              Height = 13
              Caption = 'Data:'
            end
            object Label1: TLabel
              Left = 410
              Top = 32
              Width = 59
              Height = 13
              Caption = 'Vencimento:'
            end
            object Label2: TLabel
              Left = 411
              Top = 67
              Width = 58
              Height = 13
              Caption = 'Documento:'
            end
            object grp10: TGroupBox
              AlignWithMargins = True
              Left = 40
              Top = 111
              Width = 350
              Height = 95
              Caption = 'Origem: '
              TabOrder = 3
              object combo3: TDBLookupListBox
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 340
                Height = 65
                Hint = '"Origem"'
                Align = alClient
                BevelOuter = bvNone
                BorderStyle = bsNone
                DataField = 'NORIGCONFI'
                DataSource = controleFinanceiroDm.dsManipula
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaManipulaContaOrigem
                TabOrder = 0
              end
            end
            object grp11: TGroupBox
              AlignWithMargins = True
              Left = 396
              Top = 111
              Width = 350
              Height = 95
              Caption = 'Destino:'
              TabOrder = 4
              object combo1: TDBLookupListBox
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 340
                Height = 65
                Hint = '"Destino"'
                Align = alClient
                BevelOuter = bvNone
                BorderStyle = bsNone
                DataField = 'NDESTCONFI'
                DataSource = controleFinanceiroDm.dsManipula
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaManipulaContaDestino
                TabOrder = 0
              end
            end
            object grp8: TGroupBox
              AlignWithMargins = True
              Left = 40
              Top = 212
              Width = 350
              Height = 95
              Caption = 'Categoria: '
              TabOrder = 5
              object combo2: TDBLookupListBox
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 340
                Height = 65
                Hint = '"Categoria"'
                Align = alClient
                BevelOuter = bvNone
                BorderStyle = bsNone
                DataField = 'NCODIGREDE'
                DataSource = controleFinanceiroDm.dsManipula
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaManipulaCategoria
                TabOrder = 0
                OnClick = combo2Click
                OnKeyUp = combo2KeyUp
              end
            end
            object grp9: TGroupBox
              AlignWithMargins = True
              Left = 396
              Top = 212
              Width = 350
              Height = 95
              Caption = 'Subcategoria: '
              TabOrder = 6
              object combo4: TDBLookupListBox
                Tag = 1
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 340
                Height = 65
                Hint = '"Subcategoria"'
                Align = alClient
                BevelOuter = bvNone
                BorderStyle = bsNone
                DataField = 'NCODISREDE'
                DataSource = controleFinanceiroDm.dsManipula
                KeyField = 'CODIGO'
                ListField = 'DESCRICAO'
                ListSource = controleFinanceiroDm.dsListaManipulaSubcategoria
                TabOrder = 0
              end
            end
            object grp12: TGroupBox
              Left = 40
              Top = 313
              Width = 505
              Height = 64
              Caption = 'Descricao:'
              TabOrder = 7
              object DBEdit3: TDBEdit
                Tag = 1
                Left = 14
                Top = 27
                Width = 477
                Height = 21
                Hint = '"Descricao"'
                CharCase = ecUpperCase
                DataField = 'CDESCFINAN'
                DataSource = controleFinanceiroDm.dsManipula
                TabOrder = 0
              end
            end
            object grp13: TGroupBox
              Left = 551
              Top = 313
              Width = 195
              Height = 64
              Caption = 'Valor: '
              TabOrder = 8
              object DBEdit4: TDBEdit
                Tag = 1
                Left = 16
                Top = 27
                Width = 162
                Height = 21
                Hint = '"Valor"'
                DataField = 'NVALOFINAN'
                DataSource = controleFinanceiroDm.dsManipula
                TabOrder = 0
              end
            end
            object DBEdit1: TDBEdit
              Tag = 99
              Left = 83
              Top = 29
              Width = 121
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'NCODIFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 243
              Top = 29
              Width = 147
              Height = 21
              Hint = '"Data"'
              DataField = 'DDATAFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              TabOrder = 1
            end
            object rg1: TDBRadioGroup
              Left = 40
              Top = 56
              Width = 350
              Height = 49
              Caption = 'Tipo: '
              Columns = 3
              DataField = 'CTIPOFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              Items.Strings = (
                'Despesa'
                'Receita'
                'Transferencia')
              ParentBackground = True
              TabOrder = 9
              Values.Strings = (
                'D'
                'R'
                'T')
              OnClick = rg1Click
            end
            object dbDDTVEFINAN: TDBEdit
              Tag = 2
              Left = 475
              Top = 29
              Width = 147
              Height = 21
              Hint = '"Vencimento"'
              DataField = 'DDTVEFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              TabOrder = 2
            end
            object dbchkCMVCOFINAN: TDBCheckBox
              Left = 669
              Top = 31
              Width = 77
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Conciliado:'
              DataField = 'CMVCOFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbCDOCUFINAN: TDBEdit
              Left = 475
              Top = 64
              Width = 147
              Height = 21
              DataField = 'CDOCUFINAN'
              DataSource = controleFinanceiroDm.dsManipula
              TabOrder = 10
            end
          end
        end
      end
    end
  end
end
