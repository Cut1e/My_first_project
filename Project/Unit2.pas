unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus, Buttons, ShellAPI, DB,
  ADODB, Grids, DBGrids, Mask, DBCtrls,Math,Clipbrd;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource4: TDataSource;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    N2: TMenuItem;
    DBEdit1: TDBEdit;
    Splitter1: TSplitter;
    N11: TMenuItem;
    N12: TMenuItem;
    ADOQuery4: TADOQuery;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    N13: TMenuItem;
    N14: TMenuItem;
    ASIC1: TMenuItem;
    N7: TMenuItem;
    N4: TMenuItem;
    ADOQuery4number: TIntegerField;
    ADOQuery4Give: TFloatField;
    ADOQuery4D: TStringField;
    ADOQuery4n: TStringField;
    ADOQuery4m: TStringField;
    ADOQuery1Number: TAutoIncField;
    ADOQuery1Name: TWideStringField;
    ADOQuery1Cena: TWideStringField;
    ADOQuery1Wt: TFloatField;
    ADOQuery4eln: TStringField;
    ADOQuery4eld: TStringField;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    N8: TMenuItem;
    N9: TMenuItem;
    CheckBox1: TCheckBox;
    procedure N5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure ASIC1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure ADOQuery4CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, Unit4, Unit5, Unit12, Unit13, Unit15, Unit16, Unit19, Unit18;

{$R *.dfm}





procedure TForm2.N5Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form2.Show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  form4.CheckBox1.Checked:=True;
Form2.Hide;
Form4.Show;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
    ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

procedure TForm2.Edit1Change(Sender: TObject);
var help1, help2:string;
begin
  help1:='%'+form2.Edit1.Text+'%';
  help2:=QuotedStr(help1);
  with form2.ADOQuery1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from GPU where name like'+help2+'order by name ');
    Open;
  end;
end;



procedure TForm2.N4Click(Sender: TObject);
label m2;
begin
if DBGrid1.DataSource.DataSet.IsEmpty then begin MessageBox(0,'Нельзя добавить пустую строку','Ошибка',MB_ICONWARNING or MB_OK);goto m2;end;
if Form12.CheckBox1.Checked=False then MessageBox(0,'Не подключена база данных отчета','Ошибка',MB_ICONWARNING or MB_OK) else begin
form12.ADOQuery1.Edit;
Form12.ADOQuery1.insert;
Form12.ADOQuery1.FieldByName('name').AsString:=adoquery1.FieldByName('name').AsString;
Form12.ADOQuery1.FieldByName('give').AsString:=adoquery4.FieldByName('give').AsString;
Form12.ADOQuery1.FieldByName('eld').AsString:=adoquery4.FieldByName('eld').AsString;
Form12.ADOQuery1.FieldByName('eln').AsString:=adoquery4.FieldByName('eln').AsString;
Form12.ADOQuery1.FieldByName('D').AsString:=adoquery4.FieldByName('D').AsString;
Form12.ADOQuery1.FieldByName('N').AsString:=adoquery4.FieldByName('n').AsString;
Form12.ADOQuery1.FieldByName('M').AsString:=adoquery4.FieldByName('m').AsString;
Form12.ADOQuery1.FieldByName('cena').AsString:=adoquery1.FieldByName('cena').AsString;

Form12.ADOQuery1.post;
end;m2:end;

procedure TForm2.DBEdit1Change(Sender: TObject);
var h1,h2:string;
begin
h1:=''+Form2.DBEdit1.Text;
h2:=QuotedStr(h1);
with Form2.ADOQuery4 do
begin
  close;
  SQL.Clear;
  SQL.add('select * from rgpu where number like'+h2+'or give like'+h2);
  Open;
end;
end;

procedure TForm2.N11Click(Sender: TObject);
begin
  
form5.show;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
DBEdit1.Visible:=false;
CheckBox1.Checked:=True;
Form2.SetFocus;
end;

procedure TForm2.N13Click(Sender: TObject);
begin
Form2.show;

end;

procedure TForm2.N14Click(Sender: TObject);
begin
form13.show;
Form2.Close;
end;

procedure TForm2.ASIC1Click(Sender: TObject);
begin
Form2.Close;
form16.Show;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
Form12.Show;
end;

procedure TForm2.N8Click(Sender: TObject);
begin
form15.show;
end;

procedure TForm2.ADOQuery4CalcFields(DataSet: TDataSet);
begin
  try
ADOQuery4eld.AsFloat:=StrToFloat(Edit2.text)*ADOQuery1wt.asfloat;
ADOQuery4eln.AsFloat:=StrToFloat(Edit3.text)*ADOQuery1wt.asfloat;
ADOQuery4D.AsFloat:=ADOQuery4Give.asfloat-adoquery4eld.AsFloat-adoquery4eln.AsFloat;
ADOQuery4n.AsFloat:=ADOQuery4D.AsFloat*7;
ADOQuery4m.AsFloat:=ADOQuery4D.AsFloat*30;
except MessageBox(0,'Ничего не ввели ','Ошибка',MB_ICONWARNING or MB_OK); end;
end;



procedure TForm2.Button1Click(Sender: TObject);
begin
Edit2.Enabled:=True;
Edit3.Enabled:=True;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm2.N9Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.Edit3KeyPress(Sender: TObject; var Key: Char);
 var i:Byte;
begin
if Edit3.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit3.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;



procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
var i:Byte;
begin
    if Edit2.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit2.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Edit2.MaxLength:=6;
Edit3.MaxLength:=6;
Edit1.Visible:=False;
Button1.Visible:=False;
end;

procedure TForm2.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

procedure TForm2.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

end.


