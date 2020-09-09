inherited sincronizaComRmFrm: TsincronizaComRmFrm
  Caption = 'Sincroniza com RM'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 362
  ExplicitHeight = 140
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    ExplicitLeft = 0
    ExplicitWidth = 346
    inherited btnProcessar: TSpeedButton
      OnClick = btnProcessarClick
    end
  end
  inherited pnl2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 34
    ExplicitWidth = 346
    ExplicitHeight = 67
    inherited grp1: TGroupBox
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 340
      ExplicitHeight = 61
    end
  end
end
