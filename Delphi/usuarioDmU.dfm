inherited usuarioDm: TusuarioDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      
        'SELECT A.NCODIUSUAR, A.CNOMEUSUAR, A.CLOGIUSUAR, A.CADMIUSUAR, A' +
        '.CSTATUSUAR'
      '  FROM SEGUSUAR A'
      ' WHERE A.CNOMEUSUAR LIKE :DESCRICAO || '#39'%'#39
      '   AND A.CSTATUSUAR LIKE :STATUS'
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
    object qryListaNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
      Required = True
    end
    object qryListaCNOMEUSUAR: TStringField
      FieldName = 'CNOMEUSUAR'
      Size = 60
    end
    object qryListaCLOGIUSUAR: TStringField
      FieldName = 'CLOGIUSUAR'
    end
    object qryListaCADMIUSUAR: TStringField
      FieldName = 'CADMIUSUAR'
      Size = 1
    end
    object qryListaCSTATUSUAR: TStringField
      FieldName = 'CSTATUSUAR'
      Size = 1
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGUSUAR A'
      ' WHERE A.NCODIUSUAR = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        Value = nil
      end>
    object qryManipulaNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
      Required = True
    end
    object qryManipulaCNOMEUSUAR: TStringField
      FieldName = 'CNOMEUSUAR'
      Size = 60
    end
    object qryManipulaCPASSUSUAR: TStringField
      FieldName = 'CPASSUSUAR'
      Size = 12
    end
    object qryManipulaCEMAIUSUAR: TStringField
      FieldName = 'CEMAIUSUAR'
      Size = 60
    end
    object qryManipulaCADMIUSUAR: TStringField
      FieldName = 'CADMIUSUAR'
      Size = 1
    end
    object qryManipulaCSTATUSUAR: TStringField
      FieldName = 'CSTATUSUAR'
      Size = 1
    end
    object qryManipulaCLOGIUSUAR: TStringField
      FieldName = 'CLOGIUSUAR'
    end
    object qryManipulaCPMRCUSUAR: TStringField
      FieldName = 'CPMRCUSUAR'
      Size = 1
    end
    object qryManipulaCPVNRUSUAR: TStringField
      FieldName = 'CPVNRUSUAR'
      Size = 1
    end
    object qryManipulaNQPPRUSUAR: TIntegerField
      FieldName = 'NQPPRUSUAR'
      Required = True
    end
    object qryManipulaNQPARUSUAR: TIntegerField
      FieldName = 'NQPARUSUAR'
      Required = True
    end
    object qryManipulaNQPDRUSUAR: TIntegerField
      FieldName = 'NQPDRUSUAR'
      Required = True
    end
  end
end
