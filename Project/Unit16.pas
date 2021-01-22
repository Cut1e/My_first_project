unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, ExtCtrls, StdCtrls, DB, ADODB, Mask,
  DBCtrls, frxExportRTF, frxClass, frxExportBaseDialog, frxExportPDF,ShellAPI,
  ComCtrls,Clipbrd;

type
  TForm16 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOConnection1: TADOConnection;
    DBEdit1: TDBEdit;
    N4: TMenuItem;
    N5: TMenuItem;
    ASIC1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Button1: TButton;
    ADOQuery2Number: TIntegerField;
    ADOQuery2Give: TFloatField;
    ADOQuery2enn: TStringField;
    ADOQuery2end: TStringField;
    ADOQuery2d: TStringField;
    ADOQuery2n: TStringField;
    ADOQuery2m: TStringField;
    ADOQuery1Number: TAutoIncField;
    ADOQuery1Name: TWideStringField;
    ADOQuery1Cena: TIntegerField;
    ADOQuery1Wt: TFloatField;
    N10: TMenuItem;
    ASIC2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    N13: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ASIC1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ADOQuery2CalcFields(DataSet: TDataSet);
    procedure ASIC2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure N13Click(Sender: TObject);
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
  Form16: TForm16;

implementation

uses Unit17, Unit2, Unit13, Unit5, Unit12, Unit18, Unit4;

{$R *.dfm}

procedure TForm16.N3Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form16.Show;
end;

procedure TForm16.Edit1Change(Sender: TObject);
var help1, help2:string;
begin
  help1:='%'+form16.Edit1.Text+'%';
  help2:=QuotedStr(help1);
  with Form16.ADOQuery1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from asic where name like'+help2+'order by name ');
    Open;
  end;
end;

procedure TForm16.DBEdit1Change(Sender: TObject);
var h1,h2:string;
begin
h1:=''+Form16.DBEdit1.Text;
h2:=QuotedStr(h1);
with Form16.ADOQuery2 do
begin
  close;
  SQL.Clear;
  SQL.add('select * from rasic where number like'+h2+'or give like'+h2+'order by give');
  Open;
end;

end;

procedure TForm16.FormActivate(Sender: TObject);
begin
DBEdit1.Visible:=False;
DBGrid1.SetFocus;

end;

procedure TForm16.N4Click(Sender: TObject);
begin
Form2.Show;
Form16.Close;
end;

procedure TForm16.ASIC1Click(Sender: TObject);
begin
Form16.show;
end;

procedure TForm16.N5Click(Sender: TObject);
begin
form13.show;
Form16.Close;
end;

procedure TForm16.N6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm16.N8Click(Sender: TObject);
label m3;
begin
  if DBGrid1.DataSource.DataSet.IsEmpty then begin MessageBox(0,'Нельзя добавить пустую строку','Ошибка',MB_ICONWARNING or MB_OK);goto m3;end;
  if Form12.CheckBox1.Checked=False then MessageBox(0,'Не подключена база данных отчета','Ошибка',MB_ICONWARNING or MB_OK) else begin
form12.ADOQuery1.Edit;
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
end;m3:end;

procedure TForm16.N9Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm16.Button1Click(Sender: TObject);
begin
Edit2.Enabled:=True;
Edit3.Enabled:=True;
end;

procedure TForm16.ADOQuery2CalcFields(DataSet: TDataSet);
begin
 try
ADOQuery2end.AsFloat:=StrToFloat(Edit3.text)*ADOQuery1Wt.asfloat;
ADOQuery2enn.AsFloat:=StrToFloat(Edit2.text)*ADOQuery1wt.asfloat;
ADOQuery2D.AsFloat:=ADOQuery2Give.asfloat-adoquery2end.AsFloat-adoquery2enn.AsFloat;
ADOQuery2n.AsFloat:=ADOQuery2D.AsFloat*7;
ADOQuery2m.AsFloat:=ADOQuery2D.AsFloat*30;
except MessageBox(0,'Ничего не ввели ','Ошибка',MB_ICONWARNING or MB_OK); end;

end;

procedure TForm16.ASIC2Click(Sender: TObject);
begin
Form17.Show;
end;

procedure TForm16.N10Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm16.N12Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm16.N11Click(Sender: TObject);
begin
 ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

procedure TForm16.Edit3KeyPress(Sender: TObject; var Key: Char);
var i:Byte;
begin
   for i:=1 to Length(edit3.Text) do if Key=Edit3.Text[i] then  key:=#0;
if Edit3.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit3.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;


procedure TForm16.Edit2KeyPress(Sender: TObject; var Key: Char);
var i:byte;
begin
   for i:=1 to Length(edit2.Text) do if Key=Edit2.Text[i] then  key:=#0;
if Edit2.Text=',' then begin MessageBox(0,'Неверное первое значение','Ошибка',MB_ICONWARNING or MB_OK);Edit2.Clear;end;
if Key in [#32..#43] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#45..#47] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
if Key in [#58..#255] then begin Key:=#0;MessageBox(0,'Недопустимое значение','Ошибка',MB_ICONWARNING or MB_OK);end;
end;


procedure TForm16.FormCreate(Sender: TObject);
begin
Button1.Visible:=False;
Edit2.MaxLength:=6;
Edit3.MaxLength:=6;
Edit1.Visible:=false;
end;

procedure TForm16.N13Click(Sender: TObject);
begin
  if Form2.Active then begin
Form2.Edit2.CopyToClipboard;
Form2.Edit3.CopyToClipboard;
Form2.DBGrid1.SetFocus;end;
if Form16.Active then begin
Form16.Edit2.CopyToClipboard;
form16.Edit3.CopyToClipboard;
Form16.DBGrid1.SetFocus;end;
if Form13.active   then begin
Form13.Edit2.CopyToClipboard;
Form13.Edit3.CopyToClipboard;
form13.DBGrid1.SetFocus; end;
form5.edit1.copytoclipboard;
end;

procedure TForm16.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

procedure TForm16.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssctrl in Shift) and (Key = ord('V'))) then begin
  if Clipboard.HasFormat(CF_TEXT) then Clipboard.Clear;
  edit2.seltext:='';
  key:=0;end;
end;

end.
