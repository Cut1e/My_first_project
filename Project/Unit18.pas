unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
  Form18: TForm18;

implementation

uses Unit13, Unit14, Unit2, Unit15, Unit16, Unit17, Unit12;

{$R *.dfm}

procedure TForm18.Button1Click(Sender: TObject);
begin
if Form18.OpenDialog1.Execute then Form18.Edit1.Text:=Form18.OpenDialog1.fileName;
end;

procedure TForm18.Button2Click(Sender: TObject);
begin
try
if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form13.adoquery1.active:=false;
Form13.ADOConnection1.Close;
Form13.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Edit1.Text+  ';Persist Security Info=False';
Form13.ADOConnection1.Open();
Form13.ADOQuery1.Active:=True;
form2.adoquery1.active:=false;
Form2.ADOConnection1.Close;
Form2.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ Edit1.Text+  ';Persist Security Info=False';
Form2.ADOConnection1.Open();
Form2.ADOQuery1.Active:=True;
form16.adoquery1.active:=false;
Form16.ADOConnection1.Close;
Form16.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Edit1.Text+  ';Persist Security Info=False';
Form16.ADOConnection1.Open();
Form16.ADOQuery1.Active:=True;
form12.adoquery1.active:=false;
Form12.con1.Close;
Form12.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Edit1.Text+  ';Persist Security Info=False';
Form12.con1.Open();
Form12.ADOQuery1.Active:=True;
Form12.CheckBox1.Checked:=True;
Form18.Close;
Form2.Button1.Visible:=True;
Form13.Button1.Visible:=true;
Form16.Button1.Visible:=true;
Form2.Edit1.Visible:=True;
Form13.Edit1.Visible:=True;
Form16.Edit1.Visible:=true;end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;
end;end.
