object Visor_Ayuda: TVisor_Ayuda
  Left = 192
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Ayuda del Programa'
  ClientHeight = 305
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Visor: TRichEdit
    Left = 0
    Top = 0
    Width = 588
    Height = 305
    Align = alClient
    Lines.Strings = (
      'Visor')
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
