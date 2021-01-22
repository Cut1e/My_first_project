unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm15 = class(TForm)
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
  Form15: TForm15;

implementation

uses Unit14, Unit2, Unit6;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
if Form15.OpenDialog1.Execute then Form15.Edit1.Text:=Form15.OpenDialog1.fileName;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  try
  if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form2.adoquery1.active:=false;
Form2.ADOConnection1.Close;
Form2.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ Form15.Edit1.Text+  ';Persist Security Info=False';
Form2.ADOConnection1.Open();
Form2.ADOQuery1.Active:=True;
Form15.Close;
Form2.Button1.Visible:=true;
Form2.Edit1.Visible:=True; end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;


end;

end.
