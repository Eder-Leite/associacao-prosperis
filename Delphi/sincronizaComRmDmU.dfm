object sincronizaComRmDm: TsincronizaComRmDm
  OldCreateOrder = False
  Height = 448
  Width = 545
  object stpProcessar: TOraStoredProc
    StoredProcName = 'ASS_PSINCRONIZA_COM_RM'
    Session = prosperisFrm.session
    SQL.Strings = (
      'begin'
      '  ASS_PSINCRONIZA_COM_RM;'
      'end;')
    AutoCommit = False
    Left = 56
    Top = 24
    CommandStoredProcName = 'ASS_PSINCRONIZA_COM_RM'
  end
end
