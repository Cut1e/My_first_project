unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ImgList, jpeg, ComCtrls, Buttons, ShellAPI,
  Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    CheckBox1: TCheckBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vmsbox:Integer;

implementation

uses Unit2, Unit4, Unit5, Unit7, Unit18, Unit22;

{$R *.dfm}







procedure TForm1.FormActivate(Sender: TObject);
begin

CheckBox1.Checked:=False;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
CheckBox1.Checked:=True;
Form4.CheckBox2.Checked:=True;
Form1.Hide;
form4.Show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
ShellExecute(0,PChar('OPEN'),pCHAR('delphi.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
if CheckBox1.Checked=False then begin
  vmsbox:=MessageDlgPos('Вы хотите продолжить не прочитав важную информацию?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then begin  Form2.Show;Form1.Hide; end;
if vmsbox=7 then  Form1.Show; end;
  if CheckBox1.Checked=True then  begin
  Form2.Show;
  Form1.Hide; End;;
end;

procedure TForm1.N3Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form1.Show;

end;

procedure TForm1.N2Click(Sender: TObject);
begin
 ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form22.Show;
end;

end.
