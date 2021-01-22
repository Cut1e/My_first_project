unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
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
  Form17: TForm17;

implementation

uses Unit15, Unit16;

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
if Form17.OpenDialog1.Execute then Form17.Edit1.Text:=Form17.OpenDialog1.fileName;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
  try
  if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form16.adoquery1.active:=false;
Form16.ADOConnection1.Close;
Form16.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form17.Edit1.Text+  ';Persist Security Info=False';
Form16.ADOConnection1.Open();
Form16.ADOQuery1.Active:=True;
Form17.Close;
Form16.Button1.Visible:=true;
Form16.Edit1.Visible:=True;end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;
end;

end.
