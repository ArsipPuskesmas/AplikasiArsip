object DataModule6: TDataModule6
  OldCreateOrder = False
  Left = 227
  Top = 613
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Port = 3306
    User = 'root'
    LibraryLocation = 'C:\xampp\mysql\bin\libmysql.dll'
    Left = 24
    Top = 16
  end
  object zqrydokter: TZQuery
    SQL.Strings = (
      'SELECT * FROM dokter')
    Params = <>
    Left = 88
    Top = 16
  end
end
