inherited contaFinanceiraDm: TcontaFinanceiraDm
  OldCreateOrder = True
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM FINCONFI A'
      ' WHERE A.CDESCCONFI LIKE :DESCRICAO || '#39'%'#39
      ' ORDER BY 2')
    ParamData = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        Value = ''
      end>
    object qryListaNCODICONFI: TIntegerField
      FieldName = 'NCODICONFI'
      Required = True
    end
    object qryListaCDESCCONFI: TStringField
      FieldName = 'CDESCCONFI'
      Size = 40
    end
    object qryListaNSAATCONFI: TFloatField
      FieldName = 'NSAATCONFI'
      currency = True
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM FINCONFI A'
      ' WHERE A.NCODICONFI = :CODIGO')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryManipulaNCODICONFI: TIntegerField
      FieldName = 'NCODICONFI'
      Required = True
    end
    object qryManipulaCDESCCONFI: TStringField
      FieldName = 'CDESCCONFI'
      Size = 40
    end
    object qryManipulaNSAATCONFI: TFloatField
      FieldName = 'NSAATCONFI'
      currency = True
    end
  end
end
