inherited categoriaDm: TcategoriaDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODIGREDE, A.CDESCGREDE'
      '  FROM FINGREDE A'
      ' WHERE A.CDESCGREDE LIKE :DESCRICAO || '#39'%'#39
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        Value = ''
      end>
    object qryListaNCODIGREDE: TIntegerField
      FieldName = 'NCODIGREDE'
      Required = True
    end
    object qryListaCDESCGREDE: TStringField
      FieldName = 'CDESCGREDE'
      Size = 40
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM FINGREDE A'
      ' WHERE A.NCODIGREDE = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODIGREDE: TIntegerField
      FieldName = 'NCODIGREDE'
      Required = True
    end
    object qryManipulaCDESCGREDE: TStringField
      FieldName = 'CDESCGREDE'
      Size = 40
    end
    object qryManipulaCTIPOGREDE: TStringField
      FieldName = 'CTIPOGREDE'
      Size = 1
    end
  end
end
