object Form1: TForm1
  Left = 392
  Top = 214
  Width = 487
  Height = 540
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 72
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label3: TLabel
    Left = 72
    Top = 80
    Width = 38
    Height = 13
    Caption = 'TELPON'
  end
  object Label4: TLabel
    Left = 72
    Top = 112
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 72
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 72
    Top = 176
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 272
    Top = 176
    Width = 38
    Height = 13
    Caption = 'DISKON'
  end
  object Label8: TLabel
    Left = 72
    Top = 440
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object Label9: TLabel
    Left = 336
    Top = 176
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 184
    Top = 16
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 48
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 80
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 184
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 184
    Top = 144
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 184
    Top = 176
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
  end
  object Button1: TButton
    Left = 72
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 256
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 264
    Top = 256
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
    OnClick = Button6Click
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 304
    Width = 369
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit6: TEdit
    Left = 184
    Top = 440
    Width = 241
    Height = 21
    TabOrder = 13
  end
end
