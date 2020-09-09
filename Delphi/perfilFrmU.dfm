inherited perfilFrm: TperfilFrm
  Caption = 'Perfil'
  ClientHeight = 543
  ClientWidth = 759
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 775
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 759
    ExplicitWidth = 759
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
      Left = 676
      ExplicitLeft = 676
    end
    inherited btn1: TSpeedButton
      OnClick = btn1Click
    end
  end
  inherited pnl2: TPanel
    Width = 759
    Height = 509
    ExplicitWidth = 759
    ExplicitHeight = 509
    inherited pgc1: TPageControl
      Width = 753
      Height = 503
      ExplicitWidth = 753
      ExplicitHeight = 503
      inherited ts1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 745
        ExplicitHeight = 475
        inherited pnl3: TPanel
          Top = 88
          Width = 745
          Height = 387
          ExplicitTop = 88
          ExplicitWidth = 745
          ExplicitHeight = 387
          inherited grp2: TGroupBox
            Width = 739
            Height = 381
            ExplicitWidth = 739
            ExplicitHeight = 381
            inherited Lista1: TDBGrid
              Width = 729
              Height = 358
              DataSource = perfilDm.dsLista
              OnDblClick = Lista1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NCODIPERFI'
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
                  FieldName = 'CDESCPERFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descricao'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 380
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CSTATPERFI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Status'
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
          Width = 745
          Height = 88
          ExplicitWidth = 745
          ExplicitHeight = 88
          inherited grp1: TGroupBox
            Width = 739
            Height = 82
            ExplicitWidth = 739
            ExplicitHeight = 82
            object rg1: TRadioGroup
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 185
              Height = 59
              Align = alLeft
              Caption = 'Status: '
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Ativo'
                'Inativo'
                'Todos')
              TabOrder = 0
              ExplicitTop = 20
            end
            object grp4: TGroupBox
              AlignWithMargins = True
              Left = 196
              Top = 18
              Width = 389
              Height = 59
              Align = alLeft
              Caption = 'Descricao: '
              TabOrder = 1
              object edt1: TEdit
                Left = 14
                Top = 26
                Width = 361
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
        ExplicitWidth = 745
        ExplicitHeight = 475
        inherited pnl5: TPanel
          Width = 745
          Height = 475
          ExplicitWidth = 745
          ExplicitHeight = 475
          inherited grp3: TGroupBox
            Tag = 1
            Width = 737
            Height = 93
            Align = alTop
            ExplicitWidth = 737
            ExplicitHeight = 93
            object Label1: TLabel
              Left = 24
              Top = 25
              Width = 37
              Height = 13
              Caption = 'Codigo:'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 24
              Top = 52
              Width = 53
              Height = 13
              Caption = 'Descricao: '
              FocusControl = DBEdit2
            end
            object DBEdit1: TDBEdit
              Tag = 99
              Left = 83
              Top = 21
              Width = 134
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'NCODIPERFI'
              DataSource = perfilDm.dsManipula
              ReadOnly = True
              TabOrder = 0
            end
            object dbchk1: TDBCheckBox
              Left = 223
              Top = 23
              Width = 97
              Height = 17
              Caption = 'Ativo'
              DataField = 'CSTATPERFI'
              DataSource = perfilDm.dsManipula
              TabOrder = 1
              ValueChecked = 'A'
              ValueUnchecked = 'I'
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 83
              Top = 48
              Width = 486
              Height = 21
              Hint = '"Descricao"'
              CharCase = ecUpperCase
              DataField = 'CDESCPERFI'
              DataSource = perfilDm.dsManipula
              TabOrder = 2
            end
          end
          object grp6: TGroupBox
            Tag = 2
            AlignWithMargins = True
            Left = 4
            Top = 103
            Width = 737
            Height = 368
            Align = alClient
            Caption = 'Itens do perfil: '
            TabOrder = 1
            object pnl6: TPanel
              Tag = 2
              Left = 2
              Top = 15
              Width = 733
              Height = 34
              Align = alTop
              BevelOuter = bvNone
              Color = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              object btnNovoItem: TSpeedButton
                Tag = 1
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 100
                Height = 28
                Hint = 'Novo'
                Align = alLeft
                Caption = 'Novo item'
                Flat = True
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A009F5A009F5A009F5A009F5A009F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFBE64FF
                  BE64FFBE64FFBE64FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00B26203B26203B26203B262039F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFC667FF
                  C667FFC667FFC667FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00B96B09BB6B09B96B09B96B099F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFCF6DFF
                  CF6DFFCF6DFFCF6DFFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00BD7011BE6F11BD7011BD70119F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFD475FF
                  D375FFD475FFD475FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00C47718C47718C27617C477189F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFDB7CFF
                  DB7CFFDA7BFFDB7CFFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5A009F5A00
                  9F5A009F5A009F5A009F5A00C87E1EC87E1EC87E1EC87E1E9F5A009F5A009F5A
                  009F5A009F5A009F5A00FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFE282FF
                  E282FFE282FFE282FFBE64FFBE64FFBE64FFBE64FFBE64FFBE649F5A00C98124
                  C98124C98124C98124C98124C98124C98124C98023C98124C98124C98124C981
                  24C98124C981249F5A00FFBE64FFE588FFE588FFE588FFE588FFE588FFE588FF
                  E588FFE487FFE588FFE588FFE588FFE588FFE588FFE588FFBE649F5A00D48D2C
                  D8902FD1892BD1892BD1892BD0892BCE872ACE872ACE882AD1892BD1892BD189
                  2BD48D2CD48D2C9F5A00FFBE64FFF190FFF493FFED8FFFED8FFFED8FFFED8FFF
                  EB8EFFEB8EFFEC8EFFED8FFFED8FFFED8FFFF190FFF190FFBE649F5A00DE9B39
                  DE9B39D89434D89334D89435D69133D28E31D28E31D48F32D89435D89434D893
                  34DC9736DE9B399F5A00FFBE64FFFF9DFFFF9DFFF898FFF798FFF899FFF597FF
                  F295FFF295FFF396FFF899FFF898FFF798FFFB9AFFFF9DFFBE649F5A00D99739
                  D99739D99739D99739D99739D99739D99739D99739D99739D99739D99739D997
                  39D99739D997399F5A00FFBE64FFFB9DFFFB9DFFFB9DFFFB9DFFFB9DFFFB9DFF
                  FB9DFFFB9DFFFB9DFFFB9DFFFB9DFFFB9DFFFB9DFFFB9DFFBE649F5A009F5A00
                  9F5A009F5A009F5A009F5A00E2A243E2A243E1A042E2A2439F5A009F5A009F5A
                  009F5A009F5A009F5A00FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFFFA7FF
                  FFA7FFFFA6FFFFA7FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00E7A94DE7A94DE5A94BE7A94D9F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFFFB1FF
                  FFB1FFFFAFFFFFB1FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00EBB054EDB355EBB054EBB0549F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFFFB8FF
                  FFB9FFFFB8FFFFB8FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00F7C166FAC567F7C166F7C1669F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFFFCAFF
                  FFCBFFFFCAFFFFCAFFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A00FFD480FFD480FFD480FFD4809F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFFFE4FF
                  FFE4FFFFE4FFFFE4FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF9F5A009F5A009F5A009F5A009F5A009F5A00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE64FFBE64FF
                  BE64FFBE64FFBE64FFBE64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnNovoItemClick
              end
              object btnExcluirItem: TSpeedButton
                Tag = 2
                AlignWithMargins = True
                Left = 109
                Top = 3
                Width = 100
                Height = 28
                Hint = 'Excluir'
                Align = alLeft
                Caption = 'Excluir item'
                Flat = True
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D25DA1D25DA
                  1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
                  DA1D25DA1D25DA1D25DA8189FF8189FF8189FF8189FF8189FF8189FF8189FF81
                  89FF8189FF8189FF8189FF8189FF8189FF8189FF8189FF8189FF1D25DA5A60E4
                  5A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60E45A60
                  E45A60E45A60E41D25DA8189FFBEC4FFBEC4FFBEC4FFBEC4FFBEC4FFBEC4FFBE
                  C4FFBEC4FFBEC4FFBEC4FFBEC4FFBEC4FFBEC4FFBEC4FF8189FF1D25DA767BE8
                  767BE8767BE8767BE8767BE8767BE8767BE8767BE8767BE8767BE8767BE8767B
                  E8767BE8767BE81D25DA8189FFDADFFFDADFFFDADFFFDADFFFDADFFFDADFFFDA
                  DFFFDADFFFDADFFFDADFFFDADFFFDADFFFDADFFFDADFFF8189FF1D25DA979BEE
                  979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979BEE979B
                  EE979BEE979BEE1D25DA8189FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
                  FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF8189FF1D25DAB8BAF3
                  B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BAF3B8BA
                  F3B8BAF3B8BAF31D25DA8189FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8189FF1D25DA1D25DA
                  1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25DA1D25
                  DA1D25DA1D25DA1D25DA8189FF8189FF8189FF8189FF8189FF8189FF8189FF81
                  89FF8189FF8189FF8189FF8189FF8189FF8189FF8189FF8189FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnExcluirItemClick
              end
              object btnSalvarItem: TSpeedButton
                Tag = 3
                AlignWithMargins = True
                Left = 215
                Top = 3
                Width = 100
                Height = 28
                Hint = 'Salvar'
                Align = alLeft
                Caption = 'Salvar item'
                Enabled = False
                Flat = True
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                  C29760A5640F9F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A009F5A
                  009F5A009F5A009F5A00FFFFFFFFFFFFFFFBC4FFC873FFBE64FFBE64FFBE64FF
                  BE64FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFBE64FFFFFFAE7225
                  9F5A00DCB474DCB474A35B03A35B03EED19BEBCC94EBCC94EBCC94ECCD97EBCC
                  94C37F0BBC76029F5A00FFFFFFFFD689FFBE64FFFFD8FFFFD8FFBF67FFBF67FF
                  FFFFFFFFF8FFFFF8FFFFF8FFFFFBFFFFF8FFE36FFFDA66FFBE64C9A06A9F5A00
                  C58005EBCD9AEBCD9AA95E00A95E00FFEDCAFAE7C0FAE7C0FAE7C0FCE9C4FCE9
                  C4C48009C480099F5A00FFFFCEFFBE64FFE469FFFFFEFFFFFEFFC264FFC264FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE46DFFE46DFFBE64AB6B14BD790A
                  CC8910ECD0A1ECD0A1B06200A95E00FDF0D7FAEACCFAEACCFAEACCFBECD1FBEC
                  D1CC8910C78411A45F00FFCF78FFDD6EFFED74FFFFFFFFFFFFFFC664FFC264FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED74FFE875FFC3649F5A00C78618
                  CA8A18F2DEBAF2DEBAC78829C78829FEF6E6FCF2DDFCF2DDFCF2DDFDF3E2FDF3
                  E2CA8A18CA8A18A45F00FFBE64FFEA7CFFEE7CFFFFFFFFFFFFFFEC8DFFEC8DFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE7CFFEE7CFFC3649F5A00C98B1E
                  C98B1EFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2
                  DFCD8E20CD8E20AB6500FFBE64FFEF82FFEF82FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF284FFF284FFC964AB6500CD8F25
                  C98B1EFFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFEF8FFFE
                  F8D19429D19429AB6500FFC964FFF389FFEF82FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88DFFF88DFFC964AB6500D0942D
                  D0942DD0942DD0942DD0942DD0942DD0942DD0942DD0942DD0942DD0942DD094
                  2DD0942DD0942DAB6500FFC964FFF891FFF891FFF891FFF891FFF891FFF891FF
                  F891FFF891FFF891FFF891FFF891FFF891FFF891FFF891FFC964B36D00D39833
                  D39833D39833D39833D39833D39833D39833D39833D39833D39833D39833D398
                  33D39833D39833B36D00FFD164FFFC97FFFC97FFFC97FFFC97FFFC97FFFC97FF
                  FC97FFFC97FFFC97FFFC97FFFC97FFFC97FFFC97FFFC97FFD164B36D00DAA039
                  DAA039DAA039DAA039DAA039DAA039DAA039DAA039DAA039DAA039DAA039DAA0
                  39DAA039DAA039B36D00FFD164FFFF9DFFFF9DFFFF9DFFFF9DFFFF9DFFFF9DFF
                  FF9DFFFF9DFFFF9DFFFF9DFFFF9DFFFF9DFFFF9DFFFF9DFFD164B36D00D8A13E
                  D8A13ED8A13EFAE6C0F9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E5BEF9E6C0DDA7
                  46DDA746DDA746B36D00FFD164FFFFA2FFFFA2FFFFA2FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAFFFFAAFFFFAAFFD164BA7300DBA443
                  DBA443F9E6C4F9E8C6F9E7C5F9E7C5F9E7C5F9E7C5F9E7C5F9E7C5F9E7C5FBE9
                  CAE0AB4BE0AB4BBA7300FFD764FFFFA7FFFFA7FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFAFFFD764BA7300DEA94A
                  DEA94AFAEBCEFAEED4FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FAEDD2FBEE
                  D5E3B053E3B053BA7300FFD764FFFFAEFFFFAEFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFFB7FFD764C07900E3B054
                  E3B054FCF0DBFCF3E1FCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF2DFFCF3
                  E2E8B85EE8B85EC07900FFDD64FFFFB8FFFFB8FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2FFFFC2FFDD64C07900F2CC83
                  F2CC83FDF5E7FEF9EEFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF8ECFEF9
                  F0EDC782EDC782C07900FFDD64FFFFE7FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6FFFFE6FFDD64C07900C07900
                  C07900C07900C07900C07900C07900C07900C07900C07900C07900C07900C079
                  00C07900C07900C07900FFDD64FFDD64FFDD64FFDD64FFDD64FFDD64FFDD64FF
                  DD64FFDD64FFDD64FFDD64FFDD64FFDD64FFDD64FFDD64FFDD64}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnSalvarItemClick
              end
              object btnCancelarItem: TSpeedButton
                Tag = 4
                AlignWithMargins = True
                Left = 321
                Top = 3
                Width = 100
                Height = 28
                Hint = 'Cancelar'
                Align = alLeft
                Caption = 'Cancelar item'
                Enabled = False
                Flat = True
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFDFDFDDBDBEC9F9FD78383CF8888D1ACACDBE8E8EFFEFEFEFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
                  E7FFECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFD6D6EC4F4FC20D0DBA1212C31717CA1D1DD02222D42A2ACF7979D2EBEB
                  F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3FF7171FF7676FF7B
                  7BFF8181FF8686FF8E8EFFDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  B6B6E21212B70A0ABB0E0EC01A1AC72A2ACE2F2FD42929DA2E2EE33434EA4949
                  DADADAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676FF6E6EFF7272FF7E7EFF8E
                  8EFF9393FF8D8DFF9292FF9898FFADADFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4EE
                  1414B80707B70E0EBC6C6CD2CBCBECEBEBF6E5E5F4BDBDEB5353DD3636EC3D3D
                  F34B4BD9EDEDF2FFFFFFFFFFFFFFFFFF7878FF6B6BFF7272FFD0D0FFFFFFFFFF
                  FFFFFFFFFFFFFFFFB7B7FF9A9AFFA1A1FFAFAFFFFFFFFFFFFFFFFDFDFD4A4AC5
                  0404B40808B7A0A0DDFEFEFEFFFFFFFFFFFFFFFFFFC3C3EA3232DB3131E63535
                  EB3333E98181D3FEFEFEFFFFFFAEAEFF6868FF6C6CFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF9696FF9595FF9999FF9797FFE5E5FFFFFFFFCECEED0C0CB5
                  0404B46D6DCCFEFEFEFFFFFFFFFFFFFFFFFFC4C4E92929D12525D93838DB5555
                  DD2D2DE22F2FCEEEEEF2FFFFFF7070FF6868FFD1D1FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF8D8DFF8989FF9C9CFFB9B9FF9191FF9393FFFFFFFF9F9FDF1B1BBA
                  0404B3DDDDEDFFFFFFFFFFFFFFFFFFC3C3E82121C81B1BCE3030D1D2D2EEB5B5
                  EA2727D92020D1BBBBDFFFFFFF7F7FFF6868FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF8585FF7F7FFF9494FFFFFFFFFFFFFF8B8BFF8484FFFFFFFF8383D73C3CC5
                  3838BDFAFAFAFFFFFFFFFFFFC4C4E81B1BC21313C52828C9D1D1EDFFFFFFDCDC
                  F12C2CD41C1CCE9898D5E7E7FFA0A0FF9C9CFFFFFFFFFFFFFFFFFFFFFFFFFF7F
                  7FFF7777FF8C8CFFFFFFFFFFFFFFFFFFFF9090FF8080FFFCFCFF7F7FD63E3EC5
                  4E4EC3FAFAFAFFFFFFC3C3E71717BC0C0CBE2020C2CFCFECFFFFFFFFFFFFDFDF
                  F22828CF1717C99393D3E3E3FFA2A2FFB2B2FFFFFFFFFFFFFFFFFFFF7B7BFF70
                  70FF8484FFFFFFFFFFFFFFFFFFFFFFFFFF8C8CFF7B7BFFF7F7FF9797DD4040C6
                  3B3BC2E8E8EEC9C9E92E2EC01212BC1D1DBDCECEEBFFFFFFFFFFFFFFFFFFBFBF
                  E91616C61111C1AFAFDCFBFBFFA4A4FF9F9FFFFFFFFFFFFFFF9292FF7676FF81
                  81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7AFF7575FFFFFFFFC4C4EB4646C7
                  3F3FC67777CA4040C43535C43D3DC5CFCFEBFFFFFFFFFFFFFFFFFFFEFEFE6868
                  D22121C52323BEE7E7F1FFFFFFAAAAFFA3A3FFDBDBFFA4A4FF9999FFA1A1FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCFF8585FF8787FFFFFFFFF7F7FC6161CE
                  4242C63E3EC53B3BC54141C5CFCFEBFFFFFFFFFFFFFFFFFFFEFEFEA1A1DD3131
                  C62F2FC66D6DCAFEFEFEFFFFFFC5C5FFA6A6FFA2A2FF9F9FFFA5A5FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF9595FF9393FFD1D1FFFFFFFFFFFFFFC3C3EB
                  4B4BC94242C63F3FC57A7ACBE9E9EFFBFBFBFAFAFADEDEED7C7CD13232C43232
                  C53A3AC2DFDFEFFFFFFFFFFFFFFFFFFFAFAFFFA6A6FFA3A3FFDEDEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE0E0FF9696FF9696FF9E9EFFFFFFFFFFFFFFFFFFFFFFFFFF
                  A8A8E24C4CC94242C63F3FC63E3EC25050C34B4BC33636C33636C43535C43F3F
                  C5C3C3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0FFA6A6FFA3A3FFA2A2FFB4
                  B4FFAFAFFF9A9AFF9A9AFF9999FFA3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFC1C1EA6060CE4646C74141C63F3FC53D3DC53B3BC54141C76969CFD9D9
                  F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4FFAAAAFFA5A5FFA3
                  A3FFA1A1FF9F9FFFA5A5FFCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFF5F5FBC2C2EB9595DD7F7FD68282D79D9DDFCECEEDFDFDFDFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFE3
                  E3FFE6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCancelarItemClick
              end
            end
            object pgc2: TPageControl
              AlignWithMargins = True
              Left = 5
              Top = 52
              Width = 727
              Height = 311
              ActivePage = ts4
              Align = alClient
              TabOrder = 1
              OnChanging = pgc2Changing
              object ts3: TTabSheet
                Caption = 'Lista'
                object pnl7: TPanel
                  Left = 0
                  Top = 0
                  Width = 719
                  Height = 283
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clCream
                  ParentBackground = False
                  TabOrder = 0
                  object DBGrid1: TDBGrid
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 713
                    Height = 277
                    Align = alClient
                    BorderStyle = bsNone
                    DataSource = itemDoPerfilDm.dsLista
                    DrawingStyle = gdsGradient
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = DBGrid1DblClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NCODIITPER'
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
                        FieldName = 'CDESCSISTE'
                        Title.Alignment = taCenter
                        Title.Caption = 'Sistema'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clMaroon
                        Title.Font.Height = -11
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Width = 300
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CDESCTELSI'
                        Title.Alignment = taCenter
                        Title.Caption = 'Tela'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clMaroon
                        Title.Font.Height = -11
                        Title.Font.Name = 'Tahoma'
                        Title.Font.Style = [fsBold]
                        Width = 300
                        Visible = True
                      end>
                  end
                end
              end
              object ts4: TTabSheet
                Caption = 'Cadastro'
                ImageIndex = 1
                object pnl8: TPanel
                  Left = 0
                  Top = 0
                  Width = 719
                  Height = 283
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clCream
                  ParentBackground = False
                  TabOrder = 0
                  object grp5: TGroupBox
                    Tag = 2
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 713
                    Height = 277
                    Align = alClient
                    TabOrder = 0
                    object Label3: TLabel
                      Left = 24
                      Top = 25
                      Width = 37
                      Height = 13
                      Caption = 'Codigo:'
                      FocusControl = DBEdit3
                    end
                    object DBEdit3: TDBEdit
                      Tag = 99
                      Left = 80
                      Top = 21
                      Width = 134
                      Height = 21
                      TabStop = False
                      Color = clSilver
                      DataField = 'NCODIITPER'
                      DataSource = itemDoPerfilDm.dsManipula
                      ReadOnly = True
                      TabOrder = 0
                    end
                    object grp7: TGroupBox
                      Left = 24
                      Top = 48
                      Width = 657
                      Height = 100
                      Caption = 'Sistema: '
                      TabOrder = 1
                      object combo1: TDBLookupListBox
                        Tag = 2
                        AlignWithMargins = True
                        Left = 5
                        Top = 18
                        Width = 647
                        Height = 65
                        Hint = '"Sistema"'
                        Align = alClient
                        BorderStyle = bsNone
                        DataField = 'NCODISISTE'
                        DataSource = itemDoPerfilDm.dsManipula
                        KeyField = 'CODIGO'
                        ListField = 'DESCRICAO'
                        ListSource = itemDoPerfilDm.dsListaManipulaSistema
                        TabOrder = 0
                        OnClick = combo1Click
                        OnKeyUp = combo1KeyUp
                      end
                    end
                    object grp8: TGroupBox
                      Left = 24
                      Top = 154
                      Width = 657
                      Height = 100
                      Caption = 'Tela:'
                      TabOrder = 2
                      object combo2: TDBLookupListBox
                        Tag = 1
                        AlignWithMargins = True
                        Left = 5
                        Top = 18
                        Width = 647
                        Height = 65
                        Hint = '"Tela"'
                        Align = alClient
                        BorderStyle = bsNone
                        DataField = 'NCODITELSI'
                        DataSource = itemDoPerfilDm.dsManipula
                        KeyField = 'CODIGO'
                        ListField = 'DESCRICAO'
                        ListSource = itemDoPerfilDm.dsListaManipulaTela
                        TabOrder = 0
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
