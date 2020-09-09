inherited pertenceDeChurrasqueiraDm: TpertenceDeChurrasqueiraDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIPECHU, A.NQTDEPECHU, A.CDESCPECHU'
      '  FROM ASSPECHU A'
      ' WHERE A.NCODICHURR = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaNCODIPECHU: TIntegerField
      FieldName = 'NCODIPECHU'
      Required = True
    end
    object qryListaNQTDEPECHU: TIntegerField
      FieldName = 'NQTDEPECHU'
    end
    object qryListaCDESCPECHU: TStringField
      FieldName = 'CDESCPECHU'
      Size = 60
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT * '
      '  FROM ASSPECHU A'
      ' WHERE A.NCODIPECHU = :CODIGO')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIPECHU: TIntegerField
      FieldName = 'NCODIPECHU'
      Required = True
    end
    object qryManipulaNQTDEPECHU: TIntegerField
      FieldName = 'NQTDEPECHU'
    end
    object qryManipulaCDESCPECHU: TStringField
      FieldName = 'CDESCPECHU'
      Size = 60
    end
    object qryManipulaNCODICHURR: TIntegerField
      FieldName = 'NCODICHURR'
      Required = True
    end
  end
end
