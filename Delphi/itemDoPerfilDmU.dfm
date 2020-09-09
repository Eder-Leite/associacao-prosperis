inherited itemDoPerfilDm: TitemDoPerfilDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIITPER, B.CDESCSISTE, C.CDESCTELSI'
      '  FROM SEGITPER A, SEGSISTE B, SEGTELSI C'
      ' WHERE A.NCODIPERFI = :CODIGO'
      '   AND A.NCODISISTE = B.NCODISISTE'
      '   AND A.NCODITELSI = C.NCODITELSI'
      ' ORDER BY 2,3')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaNCODIITPER: TIntegerField
      FieldName = 'NCODIITPER'
      Required = True
    end
    object qryListaCDESCSISTE: TStringField
      FieldName = 'CDESCSISTE'
      Size = 60
    end
    object qryListaCDESCTELSI: TStringField
      FieldName = 'CDESCTELSI'
      Size = 60
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGITPER A'
      ' WHERE A.NCODIITPER = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIITPER: TIntegerField
      FieldName = 'NCODIITPER'
      Required = True
    end
    object qryManipulaNCODIPERFI: TIntegerField
      FieldName = 'NCODIPERFI'
      Required = True
    end
    object qryManipulaNCODITELSI: TIntegerField
      FieldName = 'NCODITELSI'
      Required = True
    end
    object qryManipulaNCODISISTE: TIntegerField
      FieldName = 'NCODISISTE'
      Required = True
    end
  end
  object qryListaManipulaSistema: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM,'
      '       A.NCODISISTE CODIGO,'
      '       A.CDESCSISTE || '#39' | STATUS: '#39' || A.CSTATSISTE DESCRICAO'
      '  FROM SEGSISTE A'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 176
    object qryListaManipulaSistemaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaSistemaCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaSistemaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 72
    end
  end
  object qryListaManipulaTela: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM,'
      '       A.NCODITELSI CODIGO,'
      '       A.CDESCTELSI || '#39' | STATUS: '#39' || A.CSTATTELSI DESCRICAO'
      '  FROM SEGTELSI A'
      ' WHERE A.NCODISISTE = :CODIGO'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaManipulaTelaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaTelaCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaTelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 72
    end
  end
  object dsListaManipulaSistema: TOraDataSource
    DataSet = qryListaManipulaSistema
    Left = 376
    Top = 176
  end
  object dsListaManipulaTela: TOraDataSource
    DataSet = qryListaManipulaTela
    Left = 376
    Top = 232
  end
end
