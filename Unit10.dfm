object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form10'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Kode Dokter'
  end
  object Label2: TLabel
    Left = 72
    Top = 96
    Width = 62
    Height = 13
    Caption = 'Nama Dokter'
  end
  object Label3: TLabel
    Left = 72
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label4: TLabel
    Left = 72
    Top = 160
    Width = 40
    Height = 13
    Caption = 'Keahlian'
  end
  object Label5: TLabel
    Left = 80
    Top = 16
    Width = 173
    Height = 23
    Caption = 'Input Data Dokter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt3: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 168
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 168
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 56
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 256
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 7
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 192
    Width = 449
    Height = 120
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
