inherited churrasqueiraDm: TchurrasqueiraDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT A.NCODICHURR,'
      '       A.CDESCCHURR,'
      '       DECODE(A.CSTATCHURR, '#39'A'#39', '#39'ATIVA'#39', '#39'INATIVA'#39') CSTATCHURR,'
      '       A.NVLTXCHURR'
      '  FROM ASSCHURR A'
      ' WHERE A.CDESCCHURR LIKE :DESCRICAO || '#39'%'#39
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        Value = ''
      end>
    object qryListaNCODICHURR: TIntegerField
      FieldName = 'NCODICHURR'
      Required = True
    end
    object qryListaCDESCCHURR: TStringField
      FieldName = 'CDESCCHURR'
      Size = 60
    end
    object qryListaCSTATCHURR: TStringField
      FieldName = 'CSTATCHURR'
      Required = True
    end
    object qryListaNVLTXCHURR: TFloatField
      FieldName = 'NVLTXCHURR'
      Required = True
      DisplayFormat = '0.00,'
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM ASSCHURR A'
      ' WHERE A.NCODICHURR = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODICHURR: TIntegerField
      FieldName = 'NCODICHURR'
      Required = True
    end
    object qryManipulaCDESCCHURR: TStringField
      FieldName = 'CDESCCHURR'
      Size = 60
    end
    object qryManipulaCSTATCHURR: TStringField
      FieldName = 'CSTATCHURR'
      Required = True
      Size = 1
    end
    object qryManipulaNVLTXCHURR: TFloatField
      FieldName = 'NVLTXCHURR'
      Required = True
      DisplayFormat = '0.00,'
    end
    object qryManipulaCDPSGCHURR: TStringField
      FieldName = 'CDPSGCHURR'
      Size = 1
    end
    object qryManipulaCDPTECHURR: TStringField
      FieldName = 'CDPTECHURR'
      Size = 1
    end
    object qryManipulaCDPQACHURR: TStringField
      FieldName = 'CDPQACHURR'
      Size = 1
    end
    object qryManipulaCDPQICHURR: TStringField
      FieldName = 'CDPQICHURR'
      Size = 1
    end
    object qryManipulaCDPSECHURR: TStringField
      FieldName = 'CDPSECHURR'
      Size = 1
    end
    object qryManipulaCDPSACHURR: TStringField
      FieldName = 'CDPSACHURR'
      Size = 1
    end
    object qryManipulaCDPDOCHURR: TStringField
      FieldName = 'CDPDOCHURR'
      Size = 1
    end
    object qryManipulaNVLTTCHURR: TFloatField
      FieldName = 'NVLTTCHURR'
      DisplayFormat = '0.00,'
    end
  end
end
