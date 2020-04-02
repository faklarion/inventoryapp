object fbarangkeluar: Tfbarangkeluar
  Left = 257
  Top = 165
  Width = 455
  Height = 443
  Caption = 'Input Barang Keluar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 276
    Height = 31
    Caption = 'INPUT BARANG KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 65
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 39
    Height = 13
    Caption = 'Tanggal'
  end
  object Label5: TLabel
    Left = 32
    Top = 184
    Width = 133
    Height = 13
    Caption = 'Yang Mengeluarkan Barang'
  end
  object Label6: TLabel
    Left = 32
    Top = 216
    Width = 44
    Height = 13
    Caption = 'Penerima'
  end
  object Edit1: TEdit
    Left = 168
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 168
    Top = 152
    Width = 121
    Height = 21
    Date = 43748.000000000000000000
    Time = 43748.000000000000000000
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 88
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'COVER FAJAR'
      'TAS TENTENG FAJAR'
      'TAS PASPOR FAJAR'
      'IHRAM FAJAR'
      'SABUK FAJAR'
      'MUKENA FAJAR'
      'SERAGAM FAJAR'
      'BUKU MANASIK FAJAR'
      'SYAL FAJAR'
      'SAJADAH FAJAR'
      'TALI ID CARD FAJAR'
      'ID CARD FAJAR'
      'LABEL BAGASI FAJAR'
      'LABEL ZAMZAM FAJAR'
      'LABEL BAGASI COVER FAJAR'
      'TALI GANTUNGAN BUKU MANASIK FAJAR'
      'SPANDUK FAJAR'
      'ROLL BANNER FAJAR')
  end
  object Button1: TButton
    Left = 32
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 168
    Top = 184
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 168
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
