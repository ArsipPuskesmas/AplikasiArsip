unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt3: TEdit;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    Label5: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
DataModule6.zqrydokter.SQL.Clear;
DataModule6.zqrydokter.SQL.Add('insert into dokter values ("'+Edt3.Text+'","'+ edt1.Text +'","'+ edt2.Text +'","'+edt4.Text+'")');
DataModule6.zqrydokter.ExecSQL;

Close;
DataModule6.zqrydokter.sql.Clear;
DataModule6.zqrydokter.SQL.Append('SELECT * FROM dokter ');
DataModule6.zqrydokter.Open;
Form2.Visible:=True;
DataModule6.zqrydokter.Refresh;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Edt3.Clear;
edt1.Clear;
edt2.Clear;
edt4.Clear;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule6.zqrydokter.Delete;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
form4.show;
form10.Close;
end;

end.
