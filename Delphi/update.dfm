object updateFrm: TupdateFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Atualiza'#231#227'o'
  ClientHeight = 18
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pb: TProgressBar
    Left = 0
    Top = 0
    Width = 452
    Height = 18
    Align = alClient
    TabOrder = 0
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 240
  end
end
