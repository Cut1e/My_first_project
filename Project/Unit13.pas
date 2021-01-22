unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, Mask,
  DBCtrls, ComCtrls,ShellAPI,Clipbrd;

type
  TForm13 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    D1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ASIC1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    N3: TMenuItem;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ADOQuery2Number: TIntegerField;
    ADOQuery2Give: TFloatField;
    ADOQuery2end: TStringField;
    ADOQuery2enn: TStringField;
    ADOQuery2d: TStringField;
    ADOQuery2n: TStringField;
    ADOQuery2m: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Button1: TButton;
    ADOQuery1Number: TAutoIncField;
    ADOQuery1Name: TWideStringField;
    ADOQuery1Cena: TIntegerField;
    ADOQuery1wt: TFloatField;
    N9: TMenuItem;
    N4: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ASIC1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ADOQuery2CalcFields(DataSet: TDataSet);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
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
  Form13: TForm13;

implementation

uses
  Unit14, Unit2, Unit16, Unit12, Unit5, Unit18, Unit4;

{$R *.dfm}

procedure TForm13.N1Click(Sender: TObject);
begin
Form13.Close;
form2.show;
end;

procedure TForm13.N2Click(Sender: TObject);
begin
Form13.Show;
end;

procedure TForm13.Edit1Change(Sender: TObject);
var help1, help2:string;
begin
  help1:='%'+form13.Edit1.Text+'%';
  help2:=QuotedStr(help1);
  with Form13.ADOQuery1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from CPU where name like'+help2+'order by name ');
    Open;
  end;

end;

procedure TForm13.N4Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm13.DBEdit1Change(Sender: TObject);
var h1,h2:string;
begin
h1:=''+Form13.DBEdit1.Text;
h2:=QuotedStr(h1);
with Form13.ADOQuery2 do
begin
  close;
  SQL.Clear;
  SQL.add('select * from rcpu where number like'+h2+'or give like'+h2+'order by give');
  Open;
end;

end;

procedure TForm13.FormActivate(Sender: TObject);
begin
  DBEdit1.Visible:=False;
DBGrid1.SetFocus;

end;

procedure TForm13.ASIC1Click(Sender: TObject);
begin
form16.show;
Form13.Close;
end;

procedure TForm13.N6Click(Sender: TObject);
label m1;
begin
  if DBGrid1.DataSource.DataSet.IsEmpty then begin MessageBox(0,'Нельзя добавить пустую строку','Ошибка',MB_ICONWARNING or MB_OK);goto m1;end;
  if Form12.CheckBox1.Checked=False then MessageBox(0,'Не подключена база данных отчета','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form12.ADOQuery1.insert;
Form12.ADOQuery1.FieldByName('name').AsString:=adoquery1.FieldByName('name').AsString;
Form12.ADOQuery1.FieldByName('give').AsString:=adoquery2.FieldByName('give').AsString;
Form12.ADOQuery1.FieldByName('eld').AsString:=adoquery2.FieldByName('end').AsString;
Form12.ADOQuery1.FieldByName('eln').AsString:=adoquery2.FieldByName('enn').AsString;
Form12.ADOQuery1.FieldByName('D').AsString:=adoquery2.FieldByName('D').AsString;
Form12.ADOQuery1.FieldByName('N').AsString:=adoquery2.FieldByName('n').AsString;
Form12.ADOQuery1.FieldByName('M').AsString:=adoquery2.FieldByName('m').AsString;
Form12.ADOQuery1.FieldByName('cena').AsString:=adoquery1.FieldByName('cena').AsString;


Form12.ADOQuery1.post;
end;m1:end;

procedure TForm13.N7Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm13.N8Click(Sender: TObject);
begin
 Form13.Hide;
form5.show;
end;

procedure TForm13.Button1Click(Sender: TObject);
begin
Edit2.Enabled:=True;
Edit3.Enabled:=True;
end;

procedure TForm13.ADOQuery2CalcFields(DataSet: TDataSet);
begin
  try
ADOQuery2end.AsFloat:=StrToFloat(Edit2.text)*ADOQuery1Wt.asfloat;
ADOQuery2enn.AsFloat:=StrToFloat(Edit3.text)*ADOQuery1wt.asfloat;
ADOQuery2D.AsFloat:=ADOQuery2Give.asfloat-adoquery2end.AsFloat-adoquery2enn.AsFloat;
ADOQuery2n.AsFloat:=ADOQuery2D.AsFloat*7;
ADOQuery2m.AsFloat:=ADOQuery2D.AsFloat*30;
except MessageBox(0,'Ничего не ввели ','Ошибка',MB_ICONWARNING or MB_OK); end;
end;

procedure TForm13.N9Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form13.Show;

end;

procedure TForm13.N10Click(Sender: TObject);
begin
Form14.Show;
end;

procedure TForm13.N12Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm13.N11Click(Sender: TObject);
begin
 ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

procedure TForm13.Edit2KeyPress(Sender: TObject; var Key: Char);
var i:Byte;
begin
 for i:=1 to Length(edit2.Text) do if Key=Edit2.Text[i] then  key:=#0;
if Edit2.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit2.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;


procedure TForm13.Edit3KeyPress(Sender: TObject; var Key: Char);
var i:byte;
begin
   for i:=1 to Length(edit3.Text) do if Key=Edit3.Text[i] then  key:=#0;
if Edit3.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit3.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;


procedure TForm13.FormCreate(Sender: TObject);
begin
button1.Visible:=False;
Edit2.MaxLength:=6;
Edit3.MaxLength:=6;
Edit1.Visible:=False;
end;

procedure TForm13.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

procedure TForm13.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

end.
