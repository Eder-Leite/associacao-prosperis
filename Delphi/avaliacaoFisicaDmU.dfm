inherited avaliacaoFisicaDm: TavaliacaoFisicaDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIAVAFI,'
      '       A.DDATAAVAFI,'
      
        '       B.CNOMEFUNCI || '#39' | CRACHA: '#39' || B.CCRACFUNCI || '#39' | SITU' +
        'ACAO: '#39' ||'
      '       B.CSITUFUNCI NOME'
      '  FROM ASSAVAFI A, ASSFUNCI B'
      ' WHERE A.NCODIFUNCI = B.NCODIFUNCI'
      
        '   AND B.CNOMEFUNCI || '#39' | CRACHA: '#39' || B.CCRACFUNCI || '#39' | SITU' +
        'ACAO: '#39' ||'
      '       B.CSITUFUNCI LIKE :NOME || '#39'%'#39
      '   AND A.DDATAAVAFI BETWEEN :INICIO AND :FIM'
      ' ORDER BY 2 DESC, 3')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'INICIO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FIM'
        Value = ''
      end>
    object qryListaNCODIAVAFI: TIntegerField
      FieldName = 'NCODIAVAFI'
      Required = True
    end
    object qryListaDDATAAVAFI: TDateTimeField
      FieldName = 'DDATAAVAFI'
    end
    object qryListaNOME: TStringField
      FieldName = 'NOME'
      Size = 135
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT * '
      '  FROM ASSAVAFI A'
      ' WHERE A.NCODIAVAFI = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        Value = Null
      end>
    object qryManipulaNCODIAVAFI: TIntegerField
      FieldName = 'NCODIAVAFI'
      Required = True
    end
    object qryManipulaDDATAAVAFI: TDateTimeField
      FieldName = 'DDATAAVAFI'
      EditMask = '99/99/9999'
    end
    object qryManipulaCPUTSAVAFI: TStringField
      FieldName = 'CPUTSAVAFI'
      Size = 1000
    end
    object qryManipulaCEXCOAVAFI: TStringField
      FieldName = 'CEXCOAVAFI'
      Size = 1000
    end
    object qryManipulaCQUEXAVAFI: TStringField
      FieldName = 'CQUEXAVAFI'
      Size = 1000
    end
    object qryManipulaCPULSAVAFI: TStringField
      FieldName = 'CPULSAVAFI'
      Size = 1000
    end
    object qryManipulaCAVPAAVAFI: TStringField
      FieldName = 'CAVPAAVAFI'
      Size = 1000
    end
    object qryManipulaCAUPUAVAFI: TStringField
      FieldName = 'CAUPUAVAFI'
      Size = 1000
    end
    object qryManipulaCAUCAAVAFI: TStringField
      FieldName = 'CAUCAAVAFI'
      Size = 1000
    end
    object qryManipulaCMAOSAVAFI: TStringField
      FieldName = 'CMAOSAVAFI'
      Size = 1000
    end
    object qryManipulaCAPESAVAFI: TStringField
      FieldName = 'CAPESAVAFI'
      Size = 1000
    end
    object qryManipulaCAXILAVAFI: TStringField
      FieldName = 'CAXILAVAFI'
      Size = 1000
    end
    object qryManipulaCREINAVAFI: TStringField
      FieldName = 'CREINAVAFI'
      Size = 1000
    end
    object qryManipulaCMANCAVAFI: TStringField
      FieldName = 'CMANCAVAFI'
      Size = 1000
    end
    object qryManipulaCCOCAAVAFI: TStringField
      FieldName = 'CCOCAAVAFI'
      Size = 1000
    end
    object qryManipulaCOUVIAVAFI: TStringField
      FieldName = 'COUVIAVAFI'
      Size = 1000
    end
    object qryManipulaCNARIAVAFI: TStringField
      FieldName = 'CNARIAVAFI'
      Size = 1000
    end
    object qryManipulaCGARGAVAFI: TStringField
      FieldName = 'CGARGAVAFI'
      Size = 1000
    end
    object qryManipulaCDENTAVAFI: TStringField
      FieldName = 'CDENTAVAFI'
      Size = 1000
    end
    object qryManipulaCAPGUAVAFI: TStringField
      FieldName = 'CAPGUAVAFI'
      Size = 1000
    end
    object qryManipulaCANMFAVAFI: TStringField
      FieldName = 'CANMFAVAFI'
      Size = 1000
    end
    object qryManipulaCOBSEAVAFI: TStringField
      FieldName = 'COBSEAVAFI'
      Size = 2000
    end
    object qryManipulaNCODIFUNCI: TIntegerField
      FieldName = 'NCODIFUNCI'
      Required = True
    end
  end
  object qryBuscaFuncionario: TOraQuery
    SQL.Strings = (
      'SELECT A.CNOMEFUNCI NOME,'
      '       CASE'
      '         WHEN A.CSITUFUNCI = '#39'A'#39' THEN'
      '          '#39'ATIVO'#39
      '         ELSE'
      '          '#39'INATIVO'#39
      '       END SITUACAO,'
      '       A.NCODIFUNCI,'
      '       A.CCRACFUNCI'
      '  FROM ASSFUNCI A'
      ' WHERE CASE'
      '         WHEN :TIPO = '#39'CRACHA'#39' THEN'
      '          A.CCRACFUNCI'
      '         ELSE'
      '          TO_CHAR(A.NCODIFUNCI)'
      '       END = :PARAMETRO')
    AutoCommit = False
    Left = 104
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'TIPO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PARAMETRO'
        Value = ''
      end>
    object qryBuscaFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryBuscaFuncionarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 7
    end
    object qryBuscaFuncionarioNCODIFUNCI: TIntegerField
      FieldName = 'NCODIFUNCI'
      Required = True
    end
    object qryBuscaFuncionarioCCRACFUNCI: TStringField
      FieldName = 'CCRACFUNCI'
      Size = 10
    end
  end
  object dsBuscaFuncionario: TOraDataSource
    DataSet = qryBuscaFuncionario
    Left = 376
    Top = 176
  end
end
