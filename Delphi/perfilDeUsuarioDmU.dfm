inherited perfilDeUsuarioDm: TperfilDeUsuarioDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIPERUS, B.CDESCPERFI'
      '  FROM SEGPERUS A, SEGPERFI B'
      ' WHERE A.NCODIPERFI = B.NCODIPERFI'
      '   AND A.NCODIUSUAR = :CODIGO'
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaNCODIPERUS: TIntegerField
      FieldName = 'NCODIPERUS'
      Required = True
    end
    object qryListaCDESCPERFI: TStringField
      FieldName = 'CDESCPERFI'
      Size = 60
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGPERUS A'
      ' WHERE A.NCODIPERUS = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIPERUS: TIntegerField
      FieldName = 'NCODIPERUS'
      Required = True
    end
    object qryManipulaNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
      Required = True
    end
    object qryManipulaNCODIPERFI: TIntegerField
      FieldName = 'NCODIPERFI'
      Required = True
    end
  end
  object qryListaManipulaPerfil: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM, A.NCODIPERFI CODIGO, A.CDESCPERFI DESCRICAO'
      '  FROM SEGPERFI A'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 176
    object qryListaManipulaPerfilORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaPerfilCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaPerfilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object dsListaManipulaPerfil: TOraDataSource
    DataSet = qryListaManipulaPerfil
    Left = 376
    Top = 176
  end
end
