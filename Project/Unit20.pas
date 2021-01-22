unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm20 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
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
  Form20: TForm20;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm20.Button1Click(Sender: TObject);
begin
if Form20.OpenDialog1.Execute then Form20.Edit1.Text:=Form20.OpenDialog1.fileName;
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
  try
if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form12.adoquery1.active:=false;
Form12.con1.Close;
Form12.con1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form20.Edit1.Text+  ';Persist Security Info=False';
Form12.con1.Open();
Form12.ADOQuery1.Active:=True;
Form12.CheckBox1.Checked:=True;
Form20.Close; end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;

end;

end.
