object FormMenu: TFormMenu
  Left = 0
  Top = 0
  Caption = 'Menu Inicial'
  ClientHeight = 382
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 347
    Height = 36
    Caption = 'O melhor jogo da velha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -35
    Font.Name = 'Modern No. 20'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnVersusPessoa: TButton
    Left = 24
    Top = 72
    Width = 347
    Height = 121
    Caption = 'Versus Pessoa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Fixedsys'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnVersusPessoaClick
  end
  object btnVersusMaquina: TButton
    Left = 24
    Top = 216
    Width = 347
    Height = 121
    Caption = 'Versus Maquina'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
