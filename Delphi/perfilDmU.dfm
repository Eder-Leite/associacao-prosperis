inherited perfilDm: TperfilDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGPERFI A'
      ' WHERE A.CDESCPERFI LIKE :DESCRICAO || '#39'%'#39
      '   AND A.CSTATPERFI LIKE :STATUS'
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
      end
      item
        DataType = ftString
        Name = 'STATUS'
      end>
    object qryListaNCODIPERFI: TIntegerField
      FieldName = 'NCODIPERFI'
      Required = True
    end
    object qryListaCDESCPERFI: TStringField
      FieldName = 'CDESCPERFI'
      Size = 60
    end
    object qryListaCSTATPERFI: TStringField
      FieldName = 'CSTATPERFI'
      Size = 1
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT * '
      '  FROM SEGPERFI A'
      ' WHERE A.NCODIPERFI = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIPERFI: TIntegerField
      FieldName = 'NCODIPERFI'
      Required = True
    end
    object qryManipulaCDESCPERFI: TStringField
      FieldName = 'CDESCPERFI'
      Size = 60
    end
    object qryManipulaCSTATPERFI: TStringField
      FieldName = 'CSTATPERFI'
      Size = 1
    end
  end
end
