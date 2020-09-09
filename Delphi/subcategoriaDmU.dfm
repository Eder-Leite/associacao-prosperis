inherited subcategoriaDm: TsubcategoriaDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODISREDE, A.CDESCSREDE'
      '  FROM FINSREDE A'
      ' WHERE A.NCODIGREDE = :CODIGO'
      'ORDER BY 2')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaNCODISREDE: TIntegerField
      FieldName = 'NCODISREDE'
      Required = True
    end
    object qryListaCDESCSREDE: TStringField
      FieldName = 'CDESCSREDE'
      Size = 40
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT * '
      '  FROM FINSREDE A'
      ' WHERE A.NCODISREDE = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODISREDE: TIntegerField
      FieldName = 'NCODISREDE'
      Required = True
    end
    object qryManipulaCDESCSREDE: TStringField
      FieldName = 'CDESCSREDE'
      Size = 40
    end
    object qryManipulaNCODIGREDE: TIntegerField
      FieldName = 'NCODIGREDE'
      Required = True
    end
  end
end
