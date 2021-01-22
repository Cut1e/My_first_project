unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm14 = class(TForm)
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
  Form14: TForm14;

implementation

uses
  Unit13, Unit6;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
if Form14.OpenDialog1.Execute then Form14.Edit1.Text:=Form14.OpenDialog1.fileName;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
  try
if Edit1.Text='' then MessageBox(0,'Не выбрали путь базы данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
form13.adoquery1.active:=false;
Form13.ADOConnection1.Close;
Form13.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+form14.Edit1.Text+  ';Persist Security Info=False';
Form13.ADOConnection1.Open();
Form13.ADOQuery1.Active:=True;
Form14.Close;
Form13.Button1.Visible:=true;
Form13.Edit1.Visible:=True;end;
except MessageBox(0,'Не та база данных','Ошибка',MB_ICONWARNING or MB_OK); end;
end;
end.
