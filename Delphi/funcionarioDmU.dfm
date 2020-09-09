object funcionarioDm: TfuncionarioDm
  OldCreateOrder = False
  Height = 349
  Width = 437
  object qryLista: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT NCODIFUNCI,'
      '       NEMPRFUNCI,'
      '       NPESSFUNCI,'
      '       CCRACFUNCI,'
      '       CNOMEFUNCI,'
      '       CSITUFUNCI,'
      '       CPRFRFUNCI,'
      '       DECODE(CPRFRFUNCI, '#39'S'#39', '#39'SIM'#39', '#39'N'#195'O'#39') PERMITE'
      '  FROM ASSFUNCI A'
      ' WHERE A.NEMPRFUNCI IN (1, 2)'
      '   AND A.CCRACFUNCI LIKE :P_CRACHA'
      '   AND A.CNOMEFUNCI LIKE :P_NOME'
      ' ORDER BY A.CNOMEFUNCI')
    AutoCommit = False
    Left = 24
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_CRACHA'
      end
      item
        DataType = ftUnknown
        Name = 'P_NOME'
      end>
    object qryListaNCODIFUNCI: TIntegerField
      FieldName = 'NCODIFUNCI'
      Required = True
    end
    object qryListaNEMPRFUNCI: TIntegerField
      FieldName = 'NEMPRFUNCI'
    end
    object qryListaNPESSFUNCI: TIntegerField
      FieldName = 'NPESSFUNCI'
    end
    object qryListaCCRACFUNCI: TStringField
      FieldName = 'CCRACFUNCI'
      Size = 10
    end
    object qryListaCNOMEFUNCI: TStringField
      FieldName = 'CNOMEFUNCI'
      Size = 100
    end
    object qryListaCSITUFUNCI: TStringField
      FieldName = 'CSITUFUNCI'
      Size = 1
    end
    object qryListaCPRFRFUNCI: TStringField
      FieldName = 'CPRFRFUNCI'
      Size = 1
    end
    object qryListaPERMITE: TStringField
      FieldName = 'PERMITE'
      Size = 4
    end
  end
  object dsLista: TOraDataSource
    DataSet = qryLista
    Left = 80
    Top = 11
  end
  object qryManipula: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      '-- CREATED ON 24/08/2018 BY XE7 '
      'DECLARE'
      ''
      'BEGIN'
      ''
      '  IF (:P_CPRFRFUNCI = '#39'S'#39') THEN'
      '  '
      '    UPDATE ASSFUNCI A'
      '       SET A.CPRFRFUNCI = '#39'N'#39
      '     WHERE A.NCODIFUNCI = :P_NCODIFUNCI;'
      '  '
      '  ELSE'
      '  '
      '    UPDATE ASSFUNCI A'
      '       SET A.CPRFRFUNCI = '#39'S'#39
      '     WHERE A.NCODIFUNCI = :P_NCODIFUNCI;'
      '  '
      '  END IF;'
      ''
      'END;')
    Left = 24
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_CPRFRFUNCI'
      end
      item
        DataType = ftUnknown
        Name = 'P_NCODIFUNCI'
      end>
  end
  object dsManipula: TOraDataSource
    DataSet = qryManipula
    Left = 88
    Top = 83
  end
end
