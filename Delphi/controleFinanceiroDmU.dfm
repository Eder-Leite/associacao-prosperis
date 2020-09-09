inherited controleFinanceiroDm: TcontroleFinanceiroDm
  OldCreateOrder = True
  Height = 755
  Width = 707
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIFINAN,'
      '       A.DDATAFINAN,'
      '       A.CDESCFINAN,'
      '       B.CDESCSREDE,'
      '       CASE'
      '         WHEN A.CTIPOFINAN = '#39'T'#39' THEN'
      '          '#39'TRANSFERENCIA'#39
      '         ELSE'
      '          (SELECT (SELECT Z.CDESCGREDE'
      '                     FROM FINGREDE Z'
      
        '                    WHERE Z.NCODIGREDE = A.NCODIGREDE) || '#39' / '#39' ' +
        '||'
      '                  (SELECT Z.CDESCSREDE'
      '                     FROM FINSREDE Z'
      '                    WHERE Z.NCODISREDE = A.NCODISREDE)'
      '             FROM DUAL)'
      '       END CATEGORIA_SUBCATEGORIA,'
      '       CASE'
      '         WHEN A.CTIPOFINAN = '#39'T'#39' THEN'
      '          (SELECT (SELECT Y.CDESCCONFI'
      '                     FROM FINCONFI Y'
      
        '                    WHERE Y.NCODICONFI = A.NORIGCONFI) || '#39' => '#39 +
        ' ||'
      '                  (SELECT Y.CDESCCONFI'
      '                     FROM FINCONFI Y'
      '                    WHERE Y.NCODICONFI = A.NDESTCONFI)'
      '             FROM DUAL)'
      '         ELSE'
      '          (SELECT Y.CDESCCONFI'
      '             FROM FINCONFI Y'
      '            WHERE Y.NCODICONFI = A.NDESTCONFI)'
      '       END CONTA,'
      '       CASE'
      '         WHEN A.CTIPOFINAN = '#39'D'#39' THEN'
      '          A.NVALOFINAN * -1'
      '         ELSE'
      '          A.NVALOFINAN'
      '       END VALOR,'
      '       A.CTIPOFINAN,'
      '       A.NORIGCONFI,'
      '       A.NDESTCONFI,'
      '       A.DDTVEFINAN,'
      '       A.CDOCUFINAN,'
      
        '       DECODE(A.CTIPOFINAN, '#39'D'#39', '#39'DESPESA'#39', '#39'R'#39', '#39'RECEITA'#39', '#39'TRA' +
        'NSFERENCIA'#39') TIPO,'
      '       DECODE(A.CMVCOFINAN, '#39'S'#39', '#39'SIM'#39', '#39'N'#195'O'#39') CMVCOFINAN'
      '  FROM FINFINAN A, FINSREDE B'
      ' WHERE A.NCODIGREDE = B.NCODIGREDE'
      '   AND A.NCODISREDE = B.NCODISREDE'
      '   AND A.DDATAFINAN BETWEEN :INICIO AND :FIM'
      '   AND NVL(A.NCODIGREDE, 0) LIKE :CATEGORIA'
      '   AND NVL(A.NCODISREDE, 0) LIKE :SUBCATEGORIA'
      '   AND A.CDESCFINAN LIKE :DESCRICAO || '#39'%'#39
      
        '   AND ((A.NORIGCONFI LIKE :CONTA) OR (A.NDESTCONFI LIKE :CONTA)' +
        ')'
      ' ORDER BY 2 DESC, 3, 4, 5')
    ParamData = <
      item
        DataType = ftString
        Name = 'INICIO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FIM'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SUBCATEGORIA'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CONTA'
        Value = ''
      end>
    object qryListaNCODIFINAN: TFloatField
      FieldName = 'NCODIFINAN'
      Required = True
    end
    object qryListaDDATAFINAN: TDateTimeField
      FieldName = 'DDATAFINAN'
    end
    object qryListaCDESCFINAN: TStringField
      FieldName = 'CDESCFINAN'
      Size = 100
    end
    object qryListaCATEGORIA_SUBCATEGORIA: TStringField
      FieldName = 'CATEGORIA_SUBCATEGORIA'
      Size = 83
    end
    object qryListaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 84
    end
    object qryListaVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object qryListaCTIPOFINAN: TStringField
      FieldName = 'CTIPOFINAN'
      Size = 1
    end
    object qryListaNORIGCONFI: TIntegerField
      FieldName = 'NORIGCONFI'
    end
    object qryListaNDESTCONFI: TIntegerField
      FieldName = 'NDESTCONFI'
    end
    object qryListaDDTVEFINAN: TDateTimeField
      FieldName = 'DDTVEFINAN'
    end
    object qryListaCDOCUFINAN: TStringField
      FieldName = 'CDOCUFINAN'
    end
    object qryListaCMVCOFINAN: TStringField
      FieldName = 'CMVCOFINAN'
      Size = 4
    end
    object qryListaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object qryListaCDESCSREDE: TStringField
      FieldName = 'CDESCSREDE'
      Size = 40
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM FINFINAN A'
      ' WHERE A.NCODIFINAN = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIFINAN: TFloatField
      FieldName = 'NCODIFINAN'
      Required = True
    end
    object qryManipulaDDATAFINAN: TDateTimeField
      FieldName = 'DDATAFINAN'
      EditMask = '99/99/9999'
    end
    object qryManipulaCTIPOFINAN: TStringField
      FieldName = 'CTIPOFINAN'
      Size = 1
    end
    object qryManipulaCDESCFINAN: TStringField
      FieldName = 'CDESCFINAN'
      Size = 100
    end
    object qryManipulaNVALOFINAN: TFloatField
      FieldName = 'NVALOFINAN'
      currency = True
    end
    object qryManipulaNCODIGREDE: TIntegerField
      FieldName = 'NCODIGREDE'
    end
    object qryManipulaNCODISREDE: TIntegerField
      FieldName = 'NCODISREDE'
    end
    object qryManipulaNORIGCONFI: TIntegerField
      FieldName = 'NORIGCONFI'
    end
    object qryManipulaNDESTCONFI: TIntegerField
      FieldName = 'NDESTCONFI'
    end
    object qryManipulaDDTVEFINAN: TDateTimeField
      FieldName = 'DDTVEFINAN'
      EditMask = '99/99/9999'
    end
    object qryManipulaCMVCOFINAN: TStringField
      FieldName = 'CMVCOFINAN'
      Size = 1
    end
    object qryManipulaCDOCUFINAN: TStringField
      FieldName = 'CDOCUFINAN'
    end
  end
  object qryListaFiltroCategoria: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, '#39'%'#39' CODIGO, '#39'TODAS...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 0 ORDEM, '#39'0'#39' CODIGO, '#39'TRANSFERENCIA'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      
        'SELECT 1 ORDEM, TO_CHAR(A.NCODIGREDE) CODIGO, A.CDESCGREDE DESCR' +
        'ICAO'
      '  FROM FINGREDE A'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 176
    object qryListaFiltroCategoriaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaFiltroCategoriaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object qryListaFiltroCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryListaFiltroSubcategoria: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, '#39'%'#39' CODIGO, '#39'TODAS...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      
        'SELECT 1 ORDEM, TO_CHAR(A.NCODISREDE) CODIGO, A.CDESCSREDE DESCR' +
        'ICAO'
      '  FROM FINSREDE A'
      ' WHERE A.NCODIGREDE LIKE :CODIGO'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        Value = ''
      end>
    object qryListaFiltroSubcategoriaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaFiltroSubcategoriaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object qryListaFiltroSubcategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryListaFiltroConta: TOraQuery
    SQL.Strings = (
      'SELECT 1 ORDEM,'
      '       TO_CHAR(A.NCODICONFI) CODIGO,'
      '       A.CDESCCONFI DESCRICAO,'
      '       A.NSAATCONFI SALDO'
      '  FROM FINCONFI A'
      'UNION'
      'SELECT 0 ORDEM,'
      '       '#39'%'#39' CODIGO,'
      '       '#39'TOTAL'#39' DESCRICAO,'
      '       (SELECT SUM(A.NSAATCONFI) FROM FINCONFI A) SALDO'
      '  FROM DUAL'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 288
    object qryListaFiltroContaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaFiltroContaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object qryListaFiltroContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryListaFiltroContaSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
  end
  object dsListaFiltroCategoria: TOraDataSource
    DataSet = qryListaFiltroCategoria
    Left = 376
    Top = 176
  end
  object dsListaFiltroSubcategoria: TOraDataSource
    DataSet = qryListaFiltroSubcategoria
    Left = 376
    Top = 232
  end
  object dsListaFiltroConta: TOraDataSource
    DataSet = qryListaFiltroConta
    Left = 376
    Top = 288
  end
  object qryListaManipulaContaOrigem: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM, A.NCODICONFI CODIGO, A.CDESCCONFI DESCRICAO'
      '  FROM FINCONFI A'
      ' ORDER BY 1,3')
    AutoCommit = False
    Left = 104
    Top = 384
    object qryListaManipulaContaOrigemORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaContaOrigemCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaContaOrigemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryListaManipulaContaDestino: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM, A.NCODICONFI CODIGO, A.CDESCCONFI DESCRICAO'
      '  FROM FINCONFI A'
      ' ORDER BY 1,3')
    AutoCommit = False
    Left = 104
    Top = 440
    object qryListaManipulaContaDestinoORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaContaDestinoCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaContaDestinoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryListaManipulaCategoria: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM, A.NCODIGREDE CODIGO, A.CDESCGREDE DESCRICAO'
      '  FROM FINGREDE A   '
      ' ORDER BY 1,3')
    AutoCommit = False
    Left = 104
    Top = 496
    object qryListaManipulaCategoriaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaCategoriaCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryListaManipulaSubcategoria: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM, A.NCODISREDE CODIGO, A.CDESCSREDE DESCRICAO'
      '  FROM FINSREDE A '
      ' WHERE A.NCODIGREDE = :CODIGO'
      ' ORDER BY 1,3')
    AutoCommit = False
    Left = 104
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaManipulaSubcategoriaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaSubcategoriaCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaSubcategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object dsListaManipulaContaOrigem: TOraDataSource
    DataSet = qryListaManipulaContaOrigem
    Left = 376
    Top = 384
  end
  object dsListaManipulaContaDestino: TOraDataSource
    DataSet = qryListaManipulaContaDestino
    Left = 376
    Top = 440
  end
  object dsListaManipulaCategoria: TOraDataSource
    DataSet = qryListaManipulaCategoria
    Left = 376
    Top = 496
  end
  object dsListaManipulaSubcategoria: TOraDataSource
    DataSet = qryListaManipulaSubcategoria
    Left = 376
    Top = 552
  end
  object qryRelSintetico: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT ORDEM, TIPO, CATEGORIA, SUM(VALOR) VALOR'
      '  FROM (SELECT CASE'
      '                 WHEN A.CTIPOFINAN = '#39'R'#39' THEN'
      '                  0'
      '                 ELSE'
      '                  1'
      '               END ORDEM,'
      '               CASE'
      '                 WHEN A.CTIPOFINAN = '#39'R'#39' THEN'
      '                  '#39'RECEITA'#39
      '                 ELSE'
      '                  '#39'DESPESA'#39
      '               END TIPO,'
      '               B.CDESCGREDE CATEGORIA,'
      '               A.NVALOFINAN VALOR'
      '          FROM FINFINAN A, FINGREDE B'
      '         WHERE A.NCODIGREDE = B.NCODIGREDE'
      '           AND A.DDATAFINAN BETWEEN :INICIO AND :FIM'
      '           AND NVL(A.NCODIGREDE, 0) LIKE :CATEGORIA'
      
        '           AND ((A.NORIGCONFI LIKE :CONTA) OR (A.NDESTCONFI LIKE' +
        ' :CONTA)))'
      ' GROUP BY ORDEM, TIPO, CATEGORIA'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'INICIO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FIM'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CONTA'
        Value = ''
      end>
    object qryRelSinteticoORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryRelSinteticoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 7
    end
    object qryRelSinteticoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 40
    end
    object qryRelSinteticoVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
  end
end
