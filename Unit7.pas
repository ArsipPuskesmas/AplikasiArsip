unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
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
    dbgrd1: TDBGrid;
    btn4: TButton;
    Label5: TLabel;
    edt5: TEdit;
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
  Form7: TForm7;

implementation

uses
  Unit6, Unit2, Unit4;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule6.zqrybumil.SQL.Clear;
DataModule6.zqrybumil.SQL.Add('insert into pasien_bumil values ("'+Edt3.Text+'","'+ edt1.Text +'","'+ edt2.Text +'","'+edt4.Text+'","'+edt5.Text+'")');
DataModule6.zqrybumil.ExecSQL;

Close;
DataModule6.zqrybumil.sql.Clear;
DataModule6.zqrybumil.SQL.Append('SELECT * FROM pasien_bumil ');
DataModule6.zqrybumil.Open;
Form2.Visible:=True;
DataModule6.zqrybumil.Refresh;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
Edt3.Clear;
edt1.Clear;
edt2.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
DataModule6.zqrybumil.Delete;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
form4.show;
form7.close;
end;

end.
