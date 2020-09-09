inherited sistemaDm: TsistemaDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT * '
      '  FROM SEGSISTE A'
      ' WHERE A.CDESCSISTE LIKE :DESCRICAO || '#39'%'#39
      '   AND A.CSTATSISTE LIKE :STATUS'
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'STATUS'
        Value = ''
      end>
    object qryListaNCODISISTE: TIntegerField
      FieldName = 'NCODISISTE'
      Required = True
    end
    object qryListaCDESCSISTE: TStringField
      FieldName = 'CDESCSISTE'
      Size = 60
    end
    object qryListaCSTATSISTE: TStringField
      FieldName = 'CSTATSISTE'
      Size = 1
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGSISTE A'
      ' WHERE A.NCODISISTE = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODISISTE: TIntegerField
      FieldName = 'NCODISISTE'
      Required = True
    end
    object qryManipulaCDESCSISTE: TStringField
      FieldName = 'CDESCSISTE'
      Size = 60
    end
    object qryManipulaCSTATSISTE: TStringField
      FieldName = 'CSTATSISTE'
      Size = 1
    end
  end
end
