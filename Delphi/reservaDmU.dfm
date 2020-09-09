inherited reservaDm: TreservaDm
  OldCreateOrder = True
  Height = 608
  Width = 642
  inherited qryLista: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM (SELECT CAST(NCODIUSUAR AS NUMBER(7)) NCODIUSUAR,'
      '               CAST(NCODIRESER AS NUMBER(7)) NCODIRESER,'
      
        '               (DINICRESER || '#39' - '#39' || TO_CHAR(DINICRESER, '#39'Day'#39 +
        ')) DINICRESER,'
      '               DFINARESER,'
      '               CDESCCHURR,'
      '               DECODE(FUN_PERMISSAO_RESERVA_POR_DIA(NCODIRESER,'
      '                                                    NCODICHURR,'
      '                                                    DINICRESER),'
      '                      '#39'N'#39','
      '                      '#39'COOPERATIVA'#39','
      '                      NOME) NOME,'
      '               DECODE(FUN_PERMISSAO_RESERVA_POR_DIA(NCODIRESER,'
      '                                                    NCODICHURR,'
      '                                                    DINICRESER),'
      '                      '#39'N'#39','
      '                      '#39'AUTORIZADA'#39','
      '                      CSTATRESER) CSTATRESER,'
      '               CAST(NCODICHURR AS NUMBER(7)) NCODICHURR,'
      '               DECODE(FUN_PERMISSAO_RESERVA_POR_DIA(NCODIRESER,'
      '                                                    NCODICHURR,'
      '                                                    DINICRESER),'
      '                      '#39'N'#39','
      '                      '#39'COOPERATIVA'#39','
      '                      CNOMEUSUAR) CNOMEUSUAR,'
      '               NCODIFUNCI,'
      '               DATA,'
      '               TAXA,'
      
        '               FUN_QTD_RESERVA_ANO_POR_FUNC(NCODIRESER, NCODIFUN' +
        'CI) QUANTIDADE,'
      '               FUN_EXTENSO_MONETARIO(TAXA) EXTENSO,'
      '               CNOMEFUNCI,'
      '               NPESSFUNCI'
      '          FROM (SELECT NCODIUSUAR,'
      '                       NCODIRESER,'
      '                       DINICRESER,'
      '                       DFINARESER,'
      '                       CDESCCHURR,'
      '                       NOME,'
      '                       CSTATRESER,'
      '                       NCODICHURR,'
      '                       CNOMEUSUAR,'
      '                       NCODIFUNCI,'
      '                       DATA,'
      '                       TAXA,'
      '                       CNOMEFUNCI,'
      '                       NPESSFUNCI'
      '                  FROM (SELECT 0 NCODIUSUAR,'
      '                               0 NCODIRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DINICRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DFINARESER,'
      '                               '#39'CHURRASQUEIRA 1'#39' CDESCCHURR,'
      '                               '#39'LIVRE'#39' NOME,'
      '                               '#39'LIVRE'#39' CSTATRESER,'
      '                               23 NCODICHURR,'
      '                               '#39'ADMINISTRADOR'#39' CNOMEUSUAR,'
      '                               0 NCODIFUNCI,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DATA,'
      '                               0 TAXA,'
      '                               '#39'LIVRE'#39' CNOMEFUNCI,'
      '                               0 NPESSFUNCI'
      '                          FROM DUAL'
      '                        CONNECT BY LEVEL <='
      
        '                                   (TO_DATE(:FIM, '#39'DD/MM/YYYY'#39') ' +
        '-'
      
        '                                   (TO_DATE(:INICIO, '#39'DD/MM/YYYY' +
        #39') - 1)))'
      '                 WHERE DINICRESER NOT IN'
      '                       (SELECT X.DINICRESER'
      '                          FROM ASSRESER X'
      '                         WHERE X.NCODICHURR = 23'
      '                           AND X.CSTATRESER IN'
      
        '                               ('#39'PENDENTE'#39', '#39'AUTORIZADO'#39', '#39'AUT. ' +
        'E ASSINADO'#39')'
      '                           AND X.DINICRESER >= :INICIO'
      '                           AND X.DFINARESER <= :FIM)'
      '                UNION'
      '                SELECT *'
      '                  FROM (SELECT 0 NCODIUSUAR,'
      '                               0 NCODIRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DINICRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DFINARESER,'
      '                               '#39'CHURRASQUEIRA 2'#39' CDESCCHURR,'
      '                               '#39'LIVRE'#39' NOME,'
      '                               '#39'LIVRE'#39' CSTATRESER,'
      '                               24 NCODICHURR,'
      '                               '#39'ADMINISTRADOR'#39' CNOMEUSUAR,'
      '                               0 NCODIFUNCI,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DATA,'
      '                               0 TAXA,'
      '                               '#39'LIVRE'#39' CNOMEFUNCI,'
      '                               0 NPESSFUNCI'
      '                          FROM DUAL'
      '                        CONNECT BY LEVEL <='
      
        '                                   (TO_DATE(:FIM, '#39'DD/MM/YYYY'#39') ' +
        '-'
      
        '                                   (TO_DATE(:INICIO, '#39'DD/MM/YYYY' +
        #39') - 1)))'
      '                 WHERE DINICRESER NOT IN'
      '                       (SELECT X.DINICRESER'
      '                          FROM ASSRESER X'
      '                         WHERE X.NCODICHURR = 24'
      '                           AND X.CSTATRESER IN'
      
        '                               ('#39'PENDENTE'#39', '#39'AUTORIZADO'#39', '#39'AUT. ' +
        'E ASSINADO'#39')'
      '                           AND X.DINICRESER >= :INICIO'
      '                           AND X.DFINARESER <= :FIM)'
      '                UNION'
      '                SELECT *'
      '                  FROM (SELECT 0 NCODIUSUAR,'
      '                               0 NCODIRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DINICRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DFINARESER,'
      '                               '#39'CHURRASQUEIRA 3'#39' CDESCCHURR,'
      '                               '#39'LIVRE'#39' NOME,'
      '                               '#39'LIVRE'#39' CSTATRESER,'
      '                               25 NCODICHURR,'
      '                               '#39'ADMINISTRADOR'#39' CNOMEUSUAR,'
      '                               0 NCODIFUNCI,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DATA,'
      '                               0 TAXA,'
      '                               '#39'LIVRE'#39' CNOMEFUNCI,'
      '                               0 NPESSFUNCI'
      '                          FROM DUAL'
      '                        CONNECT BY LEVEL <='
      
        '                                   (TO_DATE(:FIM, '#39'DD/MM/YYYY'#39') ' +
        '-'
      
        '                                   (TO_DATE(:INICIO, '#39'DD/MM/YYYY' +
        #39') - 1)))'
      '                 WHERE DINICRESER NOT IN'
      '                       (SELECT X.DINICRESER'
      '                          FROM ASSRESER X'
      '                         WHERE X.NCODICHURR = 25'
      '                           AND X.CSTATRESER IN'
      
        '                               ('#39'PENDENTE'#39', '#39'AUTORIZADO'#39', '#39'AUT. ' +
        'E ASSINADO'#39')'
      '                           AND X.DINICRESER >= :INICIO'
      '                           AND X.DFINARESER <= :FIM)'
      '                UNION'
      '                SELECT *'
      '                  FROM (SELECT 0 NCODIUSUAR,'
      '                               0 NCODIRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DINICRESER,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DFINARESER,'
      '                               '#39'CHURRASQUEIRA 4'#39' CDESCCHURR,'
      '                               '#39'LIVRE'#39' NOME,'
      '                               '#39'LIVRE'#39' CSTATRESER,'
      '                               26 NCODICHURR,'
      '                               '#39'ADMINISTRADOR'#39' CNOMEUSUAR,'
      '                               0 NCODIFUNCI,'
      
        '                               (LEVEL + (TO_DATE(:INICIO, '#39'DD/MM' +
        '/YYYY'#39') - 1)) DATA,'
      '                               0 TAXA,'
      '                               '#39'LIVRE'#39' CNOMEFUNCI,'
      '                               0 NPESSFUNCI'
      '                          FROM DUAL'
      '                        CONNECT BY LEVEL <='
      
        '                                   (TO_DATE(:FIM, '#39'DD/MM/YYYY'#39') ' +
        '-'
      
        '                                   (TO_DATE(:INICIO, '#39'DD/MM/YYYY' +
        #39') - 1)))'
      '                 WHERE DINICRESER NOT IN'
      '                       (SELECT X.DINICRESER'
      '                          FROM ASSRESER X'
      '                         WHERE X.NCODICHURR = 26'
      '                           AND X.CSTATRESER IN'
      
        '                               ('#39'PENDENTE'#39', '#39'AUTORIZADO'#39', '#39'AUT. ' +
        'E ASSINADO'#39')'
      '                           AND X.DINICRESER >= :INICIO'
      '                           AND X.DFINARESER <= :FIM)'
      '                UNION'
      '                SELECT A.NCODIUSUAR,'
      '                       A.NCODIRESER,'
      '                       A.DINICRESER,'
      '                       A.DFINARESER,'
      '                       B.CDESCCHURR,'
      
        '                       C.CNOMEFUNCI || '#39' | CRACHA: '#39' || C.CCRACF' +
        'UNCI ||'
      '                       '#39' | SITUACAO: '#39' || C.CSITUFUNCI NOME,'
      '                       A.CSTATRESER,'
      '                       A.NCODICHURR,'
      '                       D.CNOMEUSUAR,'
      '                       A.NCODIFUNCI,'
      '                       A.DINICRESER DATA,'
      
        '                       DECODE(C.NPESSFUNCI, 0, B.NVLTTCHURR, B.N' +
        'VLTXCHURR) TAXA,'
      '                       C.CNOMEFUNCI,'
      '                       C.NPESSFUNCI'
      
        '                  FROM ASSRESER A, ASSCHURR B, ASSFUNCI C, SEGUS' +
        'UAR D'
      '                 WHERE A.NCODICHURR = B.NCODICHURR'
      '                   AND A.NCODIFUNCI = C.NCODIFUNCI'
      '                   AND A.NCODIUSUAR = D.NCODIUSUAR'
      '                   AND C.CNOMEFUNCI LIKE :NOME || '#39'%'#39
      '                   AND A.NCODICHURR LIKE :CHURRASQUEIRA'
      '                   AND A.DINICRESER >= :INICIO'
      '                   AND A.DFINARESER <= :FIM'
      
        '                   AND ((A.NCODIUSUAR = :USUARIO) OR (:USUARIO =' +
        ' 0))))'
      ' WHERE NCODICHURR LIKE :CHURRASQUEIRA'
      '   AND CSTATRESER LIKE :STATUS'
      '   AND NOME LIKE :NOME || '#39'%'#39
      ' ORDER BY DATA DESC, CDESCCHURR')
    Top = 3
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'INICIO'
      end
      item
        DataType = ftDateTime
        Name = 'FIM'
      end
      item
        DataType = ftString
        Name = 'NOME'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHURRASQUEIRA'
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
      end
      item
        DataType = ftString
        Name = 'STATUS'
        Value = ''
      end>
    object qryListaNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
    end
    object qryListaNCODIRESER: TIntegerField
      FieldName = 'NCODIRESER'
    end
    object qryListaDINICRESER: TStringField
      FieldName = 'DINICRESER'
      Size = 65
    end
    object qryListaDFINARESER: TDateTimeField
      FieldName = 'DFINARESER'
    end
    object qryListaCDESCCHURR: TStringField
      FieldName = 'CDESCCHURR'
      Size = 60
    end
    object qryListaNOME: TStringField
      FieldName = 'NOME'
      Size = 135
    end
    object qryListaCSTATRESER: TStringField
      FieldName = 'CSTATRESER'
    end
    object qryListaNCODICHURR: TIntegerField
      FieldName = 'NCODICHURR'
    end
    object qryListaCNOMEUSUAR: TStringField
      FieldName = 'CNOMEUSUAR'
      Size = 60
    end
    object qryListaTAXA: TFloatField
      FieldName = 'TAXA'
      DisplayFormat = '0.00,'
    end
    object qryListaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qryListaEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 4000
    end
    object qryListaCNOMEFUNCI: TStringField
      FieldName = 'CNOMEFUNCI'
      Size = 100
    end
    object qryListaNPESSFUNCI: TFloatField
      FieldName = 'NPESSFUNCI'
    end
  end
  inherited qryManipula: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM ASSRESER A'
      ' WHERE A.NCODIRESER = :CODIGO')
    Top = 59
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        Value = Null
      end>
    object qryManipulaNCODIRESER: TIntegerField
      FieldName = 'NCODIRESER'
      Required = True
    end
    object qryManipulaDINICRESER: TDateTimeField
      FieldName = 'DINICRESER'
      EditMask = '99/99/9999'
    end
    object qryManipulaDFINARESER: TDateTimeField
      FieldName = 'DFINARESER'
      EditMask = '99/99/9999'
    end
    object qryManipulaCSTATRESER: TStringField
      FieldName = 'CSTATRESER'
    end
    object qryManipulaCOBSERESER: TStringField
      FieldName = 'COBSERESER'
      Size = 1000
    end
    object qryManipulaNCODICHURR: TIntegerField
      FieldName = 'NCODICHURR'
      Required = True
    end
    object qryManipulaNCODIFUNCI: TIntegerField
      FieldName = 'NCODIFUNCI'
      Required = True
    end
    object qryManipulaNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
    end
    object qryManipulaCTECORESER: TStringField
      FieldName = 'CTECORESER'
      EditMask = '(99)9999-9999'
      Size = 16
    end
    object qryManipulaCSEEMRESER: TStringField
      FieldName = 'CSEEMRESER'
    end
    object qryManipulaCTERURESER: TStringField
      FieldName = 'CTERURESER'
      Size = 500
    end
    object qryManipulaNUSUARESER: TIntegerField
      FieldName = 'NUSUARESER'
    end
  end
  inherited dsLista: TOraDataSource
    Top = 3
  end
  inherited dsManipula: TOraDataSource
    Top = 59
  end
  object qryListaFiltroChurrasqueira: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, '#39'%'#39' CODIGO, '#39'TODAS...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      
        'SELECT 1 ORDEM, TO_CHAR(A.NCODICHURR) CODIGO, A.CDESCCHURR DESCR' +
        'ICAO'
      '  FROM ASSCHURR A'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 155
    object qryListaFiltroChurrasqueiraORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaFiltroChurrasqueiraCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object qryListaFiltroChurrasqueiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object dsListaFiltroChurrasqueira: TOraDataSource
    DataSet = qryListaFiltroChurrasqueira
    Left = 376
    Top = 155
  end
  object qryListaManipulaChurrasqueira: TOraQuery
    SQL.Strings = (
      'SELECT 0 ORDEM, 0 CODIGO, '#39'SELECIONE...'#39' DESCRICAO'
      '  FROM DUAL'
      'UNION'
      'SELECT 1 ORDEM,'
      '       A.NCODICHURR CODIGO,'
      '       (A.CDESCCHURR || '#39'  |  STATUS: '#39' ||'
      '       DECODE(A.CSTATCHURR, '#39'A'#39', '#39'ATIVA'#39', '#39'INATIVA'#39')) DESCRICAO'
      '  FROM ASSCHURR A'
      ' ORDER BY 1, 3')
    AutoCommit = False
    Left = 104
    Top = 251
    object qryListaManipulaChurrasqueiraORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object qryListaManipulaChurrasqueiraCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object qryListaManipulaChurrasqueiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object qryBuscaFuncionario: TOraQuery
    SQL.Strings = (
      'SELECT A.NOME,'
      '       A.SITUACAO,'
      '       A.NCODIFUNCI,'
      '       A.CCRACFUNCI'
      ' FROM ASS_VIEW_FUNC_PERMITIDO_RESERV A'
      'WHERE CASE'
      '        WHEN :TIPO = '#39'CRACHA'#39' THEN'
      '         A.CCRACFUNCI'
      '        ELSE'
      '         TO_CHAR(A.NCODIFUNCI)'
      '      END = :PARAMETRO')
    AutoCommit = False
    Left = 104
    Top = 347
    ParamData = <
      item
        DataType = ftString
        Name = 'TIPO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PARAMETRO'
        Value = ''
      end>
    object qryBuscaFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryBuscaFuncionarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 7
    end
    object qryBuscaFuncionarioNCODIFUNCI: TIntegerField
      FieldName = 'NCODIFUNCI'
      Required = True
    end
    object qryBuscaFuncionarioCCRACFUNCI: TStringField
      FieldName = 'CCRACFUNCI'
      Size = 10
    end
  end
  object dsListaManipulaChurrasqueira: TOraDataSource
    DataSet = qryListaManipulaChurrasqueira
    Left = 376
    Top = 251
  end
  object dsBuscaFuncionario: TOraDataSource
    DataSet = qryBuscaFuncionario
    Left = 376
    Top = 347
  end
  object qryPermissaoUsuario: TOraQuery
    SQL.Strings = (
      
        'SELECT A.CADMIUSUAR, A.CPMRCUSUAR, A.NCODIUSUAR, A.CPVNRUSUAR, A' +
        '.CEMAIUSUAR'
      '  FROM SEGUSUAR A'
      ' WHERE A.CLOGIUSUAR = :USUARIO')
    Left = 104
    Top = 443
    ParamData = <
      item
        DataType = ftString
        Name = 'USUARIO'
        Value = ''
      end>
    object qryPermissaoUsuarioCADMIUSUAR: TStringField
      FieldName = 'CADMIUSUAR'
      Size = 1
    end
    object qryPermissaoUsuarioCPMRCUSUAR: TStringField
      FieldName = 'CPMRCUSUAR'
      Size = 1
    end
    object qryPermissaoUsuarioNCODIUSUAR: TIntegerField
      FieldName = 'NCODIUSUAR'
      Required = True
    end
    object qryPermissaoUsuarioCPVNRUSUAR: TStringField
      FieldName = 'CPVNRUSUAR'
      Size = 1
    end
    object qryPermissaoUsuarioCEMAIUSUAR: TStringField
      FieldName = 'CEMAIUSUAR'
      Size = 60
    end
  end
  object qryPermiteFazerReservaNoPeriodo: TOraQuery
    SQL.Strings = (
      'SELECT CASE'
      '         WHEN COUNT(*) > 0 THEN'
      '          '#39'N'#39
      '         ELSE'
      '          '#39'S'#39
      '       END RESULTADO'
      '  FROM ASSRESER A'
      ' WHERE (A.DINICRESER BETWEEN :INICIO AND :FIM'
      '    OR A.DFINARESER BETWEEN :INICIO AND :FIM)'
      '   AND A.NCODIRESER <> :RESERVA'
      '   AND A.CSTATRESER NOT IN ('#39'REJEITADO'#39','#39'CANCELADO'#39')'
      '   AND A.NCODICHURR = :CHURRASQUEIRA')
    Left = 104
    Top = 499
    ParamData = <
      item
        DataType = ftString
        Name = 'INICIO'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FIM'
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'RESERVA'
      end
      item
        DataType = ftInteger
        Name = 'CHURRASQUEIRA'
      end>
    object qryPermiteFazerReservaNoPeriodoRESULTADO: TStringField
      FieldName = 'RESULTADO'
      FixedChar = True
      Size = 1
    end
  end
  object qryListaImprimiPertences: TOraQuery
    SQL.Strings = (
      'SELECT A.NQTDEPECHU, A.CDESCPECHU'
      '  FROM ASSPECHU A'
      ' WHERE A.NCODICHURR = :CODIGO'
      ' ORDER BY 2')
    Left = 104
    Top = 555
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
      end>
    object qryListaImprimiPertencesNQTDEPECHU: TIntegerField
      FieldName = 'NQTDEPECHU'
    end
    object qryListaImprimiPertencesCDESCPECHU: TStringField
      FieldName = 'CDESCPECHU'
      Size = 60
    end
  end
  object qryPermissaoAutorizarReserva: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT FUN_PERMISSAO_RESERVA_AUT(:P_COD_RESERVA,'
      '                                 :P_FUNCIONARIO,'
      '                                 :P_USUARIO,'
      '                                 :P_DT_RESERVA) RETORNO'
      '  FROM DUAL')
    AutoCommit = False
    Left = 368
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end
      item
        DataType = ftUnknown
        Name = 'P_FUNCIONARIO'
      end
      item
        DataType = ftUnknown
        Name = 'P_USUARIO'
      end
      item
        DataType = ftUnknown
        Name = 'P_DT_RESERVA'
      end>
    object qryPermissaoAutorizarReservaRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryPermissaoPendenteReserva: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT FUN_PERMISSAO_RESERVA_PENDENTE(:P_COD_RESERVA,'
      '                                      :P_FUNCIONARIO,'
      '                                      :P_USUARIO) RETORNO'
      '  FROM DUAL')
    AutoCommit = False
    Left = 368
    Top = 531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end
      item
        DataType = ftUnknown
        Name = 'P_FUNCIONARIO'
      end
      item
        DataType = ftUnknown
        Name = 'P_USUARIO'
      end>
    object qryPermissaoPendenteReservaRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryQuantidadeMaximaDias: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      
        'SELECT FUN_PERMISSAO_MAXIMO_DIA_RESER(:P_USUARIO, :P_DT_RESERVA)' +
        ' RETORNO FROM DUAL')
    AutoCommit = False
    Left = 504
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_USUARIO'
      end
      item
        DataType = ftUnknown
        Name = 'P_DT_RESERVA'
      end>
    object qryQuantidadeMaximaDiasRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object idSMTP: TIdSMTP
    IOHandler = HandlerSSL
    SASLMechanisms = <>
    Left = 464
    Top = 11
  end
  object idMESSAGE: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 552
    Top = 11
  end
  object HandlerSSL: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 464
    Top = 75
  end
  object qryConfigEmail: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT *'
      '  FROM SEGEMAIL')
    AutoCommit = False
    Left = 528
    Top = 347
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
  object qryEmailAdministradores: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT FUN_EMAIL_ADMINISTRADOR_RESERV RETORNO FROM DUAL')
    AutoCommit = False
    Left = 528
    Top = 411
    object qryEmailAdministradoresRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryCorpoEmail: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT FUN_CORPO_EMAIL_RESERVA(:P_COD_RESERVA) RETORNO FROM DUAL')
    AutoCommit = False
    Left = 528
    Top = 499
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end>
    object qryCorpoEmailRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryEmailUsuario: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT B.CEMAIUSUAR EMAIL, A.CSTATRESER STATUS'
      '  FROM ASSRESER A, SEGUSUAR B'
      ' WHERE A.NCODIUSUAR = B.NCODIUSUAR'
      '   AND A.NCODIRESER = :P_COD_RESERVA')
    AutoCommit = False
    Left = 528
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end>
    object qryEmailUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qryEmailUsuarioSTATUS: TStringField
      FieldName = 'STATUS'
    end
  end
  object qryStatusEmail: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT A.CSTATRESER, A.CSEEMRESER'
      '  FROM ASSRESER A'
      ' WHERE A.NCODIRESER = :P_COD_RESERVA')
    AutoCommit = False
    Left = 520
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end>
    object qryStatusEmailCSTATRESER: TStringField
      FieldName = 'CSTATRESER'
    end
    object qryStatusEmailCSEEMRESER: TStringField
      FieldName = 'CSEEMRESER'
    end
  end
  object qryAtualizaStatusEmail: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      '-- CREATED ON 01/05/2017 BY XE7 '
      'DECLARE'
      '  -- LOCAL VARIABLES HERE'
      'BEGIN'
      ''
      '  UPDATE ASSRESER A'
      '     SET A.CSEEMRESER = :P_STATUS'
      '   WHERE A.NCODIRESER = :P_COD_RESERVA;'
      ''
      'END;')
    Left = 544
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_STATUS'
      end
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end>
  end
  object IdIPWatch: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 256
    Top = 16
  end
  object qryVerificaChurrasqueira: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT COUNT(*) RETORNO'
      '  FROM ASSCHURR A'
      'WHERE A.CSTATCHURR = '#39'A'#39
      '  AND A.NCODICHURR = :P_NCODICHURR')
    AutoCommit = False
    Left = 240
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_NCODICHURR'
      end>
    object qryVerificaChurrasqueiraRETORNO: TFloatField
      FieldName = 'RETORNO'
    end
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 5
    Margens.Right = 5
    Margens.Top = 5
    Margens.Bottom = 5
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'COOP.  AGROINDUSTRIAL NOVA PRODUTIVA'
    RegistroUsuario.SerieProduto = 'SITE-0216/00782'
    RegistroUsuario.AutorizacaoKey = 'OEN3-QSZ1-IJRO-W1DZ-9RFH'
    About = 'RDprint 6.0 - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'RDprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DR700=DARUMA'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 256
    Top = 192
  end
  object qryVerificaDiaChurrasqueria: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      
        'SELECT FUN_PERMISSAO_RESERVA_POR_DIA(:P_COD_RESERVA, :P_COD_CHUR' +
        'RASQUEIRA, :P_DT_RESERVA) RETORNO'
      '  FROM DUAL')
    AutoCommit = False
    Left = 240
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_COD_RESERVA'
      end
      item
        DataType = ftUnknown
        Name = 'P_COD_CHURRASQUEIRA'
      end
      item
        DataType = ftUnknown
        Name = 'P_DT_RESERVA'
      end>
    object qryVerificaDiaChurrasqueriaRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 4000
    end
  end
  object qryValidaTaxa: TOraQuery
    Session = prosperisFrm.session
    SQL.Strings = (
      'SELECT FUN_QTD_RESERVA_ANO_POR_FUNC(P_RESERVA     => :P_RESERVA,'
      
        '                                    P_FUNCIONARIO => :P_FUNCIONA' +
        'RIO) AS RETORNO'
      '  FROM DUAL')
    AutoCommit = False
    Left = 240
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_RESERVA'
      end
      item
        DataType = ftUnknown
        Name = 'P_FUNCIONARIO'
      end>
    object qryValidaTaxaRETORNO: TFloatField
      FieldName = 'RETORNO'
    end
  end
end
