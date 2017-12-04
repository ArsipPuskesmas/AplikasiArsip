unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;

implementation

uses
  Unit6, Unit2, Unit4;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
DataModule6.zqryanak.SQL.Clear;
DataModule6.zqryanak.SQL.Add('insert into pasien_anak values ("'+Edt3.Text+'","'+ edt1.Text +'","'+ edt2.Text +'","'+edt4.Text+'","'+edt5.Text+'")');
DataModule6.zqryanak.ExecSQL;

Close;
DataModule6.zqryanak.sql.Clear;
DataModule6.zqryanak.SQL.Append('SELECT * FROM pasien_anak ');
DataModule6.zqryanak.Open;
Form2.Visible:=True;
DataModule6.zqryanak.Refresh;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
Edt3.Clear;
edt1.Clear;
edt2.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
DataModule6.zqryanak.Delete;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
form4.show;
form8.close;
end;

end.
