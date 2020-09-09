object dataModulePadraoDm: TdataModulePadraoDm
  OldCreateOrder = False
  Height = 446
  Width = 641
  object qryLista: TOraQuery
    Session = prosperisFrm.session
    AutoCommit = False
    Left = 104
    Top = 24
  end
  object qryManipula: TOraQuery
    Session = prosperisFrm.session
    AutoCommit = False
    Left = 104
    Top = 80
  end
  object dsLista: TOraDataSource
    DataSet = qryLista
    Left = 376
    Top = 24
  end
  object dsManipula: TOraDataSource
    DataSet = qryManipula
    Left = 376
    Top = 80
  end
end
