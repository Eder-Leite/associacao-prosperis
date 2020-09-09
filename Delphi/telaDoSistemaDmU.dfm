inherited telaDoSistemaDm: TtelaDoSistemaDm
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODITELSI, A.CDESCTELSI, A.CSTATTELSI'
      '  FROM SEGTELSI A'
      ' WHERE A.NCODISISTE = :CODIGO'
      ' ORDER BY 2')
    AutoCommit = False
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaNCODITELSI: TIntegerField
      FieldName = 'NCODITELSI'
      Required = True
    end
    object qryListaCDESCTELSI: TStringField
      FieldName = 'CDESCTELSI'
      Size = 60
    end
    object qryListaCSTATTELSI: TStringField
      FieldName = 'CSTATTELSI'
      Size = 1
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGTELSI A'
      ' WHERE A.NCODITELSI = :CODIGO')
    AutoCommit = False
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODITELSI: TIntegerField
      FieldName = 'NCODITELSI'
      Required = True
    end
    object qryManipulaCDESCTELSI: TStringField
      FieldName = 'CDESCTELSI'
      Size = 60
    end
    object qryManipulaCSTATTELSI: TStringField
      FieldName = 'CSTATTELSI'
      Size = 1
    end
    object qryManipulaNCODISISTE: TIntegerField
      FieldName = 'NCODISISTE'
      Required = True
    end
  end
end
