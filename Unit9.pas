unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
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
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses
  Unit6, Unit2, Unit4;

{$R *.dfm}

procedure TForm9.btn2Click(Sender: TObject);
begin
Edt3.Clear;
edt1.Clear;
edt2.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
DataModule6.zqryewasa.SQL.Clear;
DataModule6.zqryewasa.SQL.Add('insert into pasien_dewasa values ("'+Edt3.Text+'","'+ edt1.Text +'","'+ edt2.Text +'","'+edt4.Text+'","'+edt5.Text+'")');
DataModule6.zqryewasa.ExecSQL;

Close;
DataModule6.zqryewasa.sql.Clear;
DataModule6.zqryewasa.SQL.Append('SELECT * FROM pasien_dewasa ');
DataModule6.zqryewasa.Open;
Form2.Visible:=True;
DataModule6.zqryewasa.Refresh;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
DataModule6.zqryewasa.Delete;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
form4.show;
form9.close;
end;

end.
