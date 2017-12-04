program Project1;

uses
  Forms,
  Unit10 in 'Unit10.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule6: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule6, DataModule6);
  Application.Run;
end.
