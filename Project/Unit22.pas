unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm22 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Unit10, Unit12, Unit8, Unit9, Unit11, Unit23;

{$R *.dfm}

procedure TForm22.Button1Click(Sender: TObject);
begin
if Form22.OpenDialog1.Execute then Form22.Edit1.Text:=Form22.OpenDialog1.fileName;
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
  try
  if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form10.ADOTable1.active:=false;
Form10.con1.Close;
Form10.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form22.Edit1.Text+  ';Persist Security Info=False';
Form10.con1.Open();
Form10.ADOTable1.Active:=True;
form10.CheckBox1.Checked:=True;
form8.ADOTable1.active:=false;
Form8.con1.Close;
Form8.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form22.Edit1.Text+  ';Persist Security Info=False';
Form8.con1.Open();
Form8.ADOTable1.Active:=True;
form8.CheckBox1.Checked:=True;
form9.ADOTable1.active:=false;
Form9.con1.Close;
Form9.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form22.Edit1.Text+  ';Persist Security Info=False';
Form9.con1.Open();
Form9.ADOTable1.Active:=True;
form9.CheckBox1.Checked:=True;
form11.ADOTable1.active:=false;
Form11.con1.Close;
Form11.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form22.Edit1.Text+  ';Persist Security Info=False';
Form11.con1.Open();
Form11.ADOTable1.Active:=True;
form11.CheckBox1.Checked:=True;
form23.ADOTable1.active:=false;
Form23.con1.Close;
Form23.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form22.Edit1.Text+  ';Persist Security Info=False';
Form23.con1.Open();
Form23.ADOTable1.Active:=True;
Form23.ADOTable2.Active:=True;
Form23.ADOTable3.Active:=True;
Form23.ADOTable4.Active:=True;
form23.CheckBox1.Checked:=True;
Form22.Close;end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;
end;

end.
