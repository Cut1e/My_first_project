unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus,ShellAPI;

type
  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    LabeledEdit1: TLabeledEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    Button1: TButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Edit2: TEdit;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  var znak,a,b,c,d:double;
  oper:Char;
  s:string;

implementation

uses
  Unit1, Unit4, Unit2, Unit6, Unit16;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
  label m1;
var i:Integer;
begin
 if  Edit1.Text='' then begin  MessageBox(0,'Вы не ввели количество валюты','Ошибка',MB_ICONWARNING or MB_OK); goto m1;end;
 //Form5.Show;Break;goto m1;end;
 i:=ComboBox1.ItemIndex;
 if ComboBox2.ItemIndex=0 then
 case i of
 0: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*10584.16);
 1: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*191.48);
 2: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*0.00450857 );
 3: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*787.67);
 end;
 if ComboBox2.ItemIndex=1 then
 case i of
 0: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*8466.52);
 1: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*153.97);
 2: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*0.00355977);
 3: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*634.55);

end;
if ComboBox2.ItemIndex=2 then
 case i of
 0: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*559843.09);
 1: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*10469.33 );
 2: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*0.2351341);
 3: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*42598.57);

end;
if ComboBox2.ItemIndex=3 then
 case i of
 0: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*7403.51);
 1: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*134.6 );
 2: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*0.00310947);
 3: LabeledEdit1.Text:=FloatToStr(StrToInt(edit1.Text)*555.11);

end;m1:Form5.Show;end;

procedure TForm5.FormActivate(Sender: TObject);
begin
edit1.MaxLength:=5;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key in [#32..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end; 
end;


procedure TForm5.Button1Click(Sender: TObject);
begin
form5.hide;
form2.show;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
label1.left:=label1.Left-1;
if Label1.Left = -Label1.Width then Label1.Left := Form1.width+Label1.Width;
end;


procedure TForm5.N2Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form5.Show;
end;

procedure TForm5.N1Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if s='0' then s:='1'
else s:=s+'1';
Edit2.Text:=s;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if s='0' then s:='2'
else s:=s+'2';
Edit2.Text:=s;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
if s='0' then s:='3'
else s:=s+'3';
Edit2.Text:=s;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
if s='0' then s:='4'
else s:=s+'4';
Edit2.Text:=s;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
if s='0' then s:='5'
else s:=s+'5';
Edit2.Text:=s;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
if s='0' then s:='6'
else s:=s+'6';
Edit2.Text:=s;
end;

procedure TForm5.Button8Click(Sender: TObject);
begin
if s='0' then s:='7'
else s:=s+'7';
Edit2.Text:=s;
end;

procedure TForm5.Button9Click(Sender: TObject);
begin
if s='0' then s:='8'
else s:=s+'8';
Edit2.Text:=s;
end;

procedure TForm5.Button10Click(Sender: TObject);
begin
if s='0' then s:='9'
else s:=s+'9';
Edit2.Text:=s;
end;

procedure TForm5.Button11Click(Sender: TObject);
begin
if s='0' then s:='0'
else s:=s+'0';
Edit2.Text:=s;
end;

procedure TForm5.Button12Click(Sender: TObject);
begin
oper:='*';
if a=0 then a:=StrToFloat(s);
s:='';
end;

procedure TForm5.Button13Click(Sender: TObject);
begin
oper:='/';
if a=0 then a:=StrToFloat(s);
s:='';
end;

procedure TForm5.Button14Click(Sender: TObject);
begin
oper:='+';
if a=0 then a:=StrToFloat(s);
s:='';
end;

procedure TForm5.Button15Click(Sender: TObject);
begin
oper:='-';
if a=0 then a:=StrToFloat(s);
s:='';
end;

procedure TForm5.Button16Click(Sender: TObject);
begin
s:=Edit2.Text;
b:=strtofloat(s);
case oper   of
'*': c:=a*b;
'/': begin
  if b=0 then ShowMessage('Error')
  else c:=a/b;
  end;
  '+': c:=a+b;
  '-': c:=a-b;
end;
Edit2.Text:=FloatToStr(c);
a:=c;
s:=' ';
end;

procedure TForm5.Button17Click(Sender: TObject);
begin
s:='0';
Edit2.Text:=s;
a:=0;
b:=0;
c:=0;
end;

procedure TForm5.Button18Click(Sender: TObject);
begin
s:=Edit2.Text;
a:=StrToFloat(s)*(-1);
s:=FloatToStr(a);
Edit2.Text:=s;
s:='';
end;

procedure TForm5.Button19Click(Sender: TObject);
begin
if TryStrToFloat(s+',',d) then
s:=s+',';
Edit2.Text:=s;
end;

procedure TForm5.N3Click(Sender: TObject);
begin
 ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

procedure TForm5.N4Click(Sender: TObject);
begin
form4.show;
end;

end.
