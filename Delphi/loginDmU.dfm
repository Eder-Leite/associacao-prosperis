object loginDm: TloginDm
  OldCreateOrder = False
  Height = 325
  Width = 468
  object qryCorpoEmail: TOraQuery
    SQL.Strings = (
      
        'SELECT FUN_CORPO_EMAIL_REC_SENHA(:P_EMAIL, :P_TERMINAL) RETORNO ' +
        'FROM DUAL')
    AutoCommit = False
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_EMAIL'
      end
      item
        DataType = ftUnknown
        Name = 'P_TERMINAL'
      end>
    object qryCorpoEmailRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryConfigEmail: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGEMAIL')
    Left = 136
    Top = 16
    object qryConfigEmailMAIL_SERVER_HOST: TStringField
      FieldName = 'MAIL_SERVER_HOST'
      Required = True
      Size = 100
    end
    object qryConfigEmailMAIL_SERVER_PORT: TFloatField
      FieldName = 'MAIL_SERVER_PORT'
      Required = True
    end
    object qryConfigEmailMAIL_ENABLE_SSL: TStringField
      FieldName = 'MAIL_ENABLE_SSL'
      Required = True
      Size = 1
    end
    object qryConfigEmailMAIL_AUTH: TStringField
      FieldName = 'MAIL_AUTH'
      Required = True
      Size = 1
    end
    object qryConfigEmailMAIL_FROM: TStringField
      FieldName = 'MAIL_FROM'
      Required = True
      Size = 100
    end
    object qryConfigEmailMAIL_USERNAME: TStringField
      FieldName = 'MAIL_USERNAME'
      Required = True
      Size = 100
    end
    object qryConfigEmailMAIL_PASSWORD: TStringField
      FieldName = 'MAIL_PASSWORD'
      Required = True
      Size = 100
    end
    object qryConfigEmailMAIL_SMTP_STARTTLS_ENABLE: TStringField
      FieldName = 'MAIL_SMTP_STARTTLS_ENABLE'
      Required = True
      Size = 1
    end
  end
  object IdIPWatch: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 224
    Top = 16
  end
end
