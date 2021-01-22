unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxPreview, frxExportRTF,
  frxExportBaseDialog, frxExportPDF, Menus, DB, ExtCtrls, Grids, DBGrids,
  ADODB, StdCtrls, frxExportImage, frxExportXLSX, frxExportPPTX,
  frxExportDOCX,ShellAPI, ComCtrls;

type
  TForm12 = class(TForm)
    con1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ASIC1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    frxDOCXExport1: TfrxDOCXExport;
    frxPPTXExport1: TfrxPPTXExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    N18: TMenuItem;
    RTF2: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    XLSX2: TMenuItem;
    JPEG2: TMenuItem;
    PDF2: TMenuItem;
    RTF3: TMenuItem;
    DOCX1: TMenuItem;
    PTTX1: TMenuItem;
    XLSX3: TMenuItem;
    JPEG3: TMenuItem;
    PDF3: TMenuItem;
    RTF4: TMenuItem;
    DOCX2: TMenuItem;
    PTTX2: TMenuItem;
    XLSX4: TMenuItem;
    JPEG4: TMenuItem;
    PDF4: TMenuItem;
    RTF5: TMenuItem;
    DOCX3: TMenuItem;
    PTTX3: TMenuItem;
    XLSX5: TMenuItem;
    JPEG5: TMenuItem;
    N10: TMenuItem;
    N17: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ASIC1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure RTF1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure PPTX1Click(Sender: TObject);
    procedure XLSX1Click(Sender: TObject);
    procedure JPEG1Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure RTF2Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure XLSX2Click(Sender: TObject);
    procedure JPEG2Click(Sender: TObject);
    procedure PDF2Click(Sender: TObject);
    procedure RTF3Click(Sender: TObject);
    procedure DOCX1Click(Sender: TObject);
    procedure PTTX1Click(Sender: TObject);
    procedure XLSX3Click(Sender: TObject);
    procedure JPEG3Click(Sender: TObject);
    procedure PDF3Click(Sender: TObject);
    procedure RTF4Click(Sender: TObject);
    procedure DOCX2Click(Sender: TObject);
    procedure PTTX2Click(Sender: TObject);
    procedure XLSX4Click(Sender: TObject);
    procedure JPEG4Click(Sender: TObject);
    procedure PDF4Click(Sender: TObject);
    procedure RTF5Click(Sender: TObject);
    procedure DOCX3Click(Sender: TObject);
    procedure PTTX3Click(Sender: TObject);
    procedure XLSX5Click(Sender: TObject);
    procedure JPEG5Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses
  Unit2, Unit16, Unit13, Unit5, Unit19, Unit20, Unit18, Unit21, Unit4;

{$R *.dfm}

procedure TForm12.N4Click(Sender: TObject);
begin
Form12.Hide;
form2.show;
end;

procedure TForm12.N5Click(Sender: TObject);
begin
Form12.Hide;
form13.show;
end;

procedure TForm12.ASIC1Click(Sender: TObject);
begin

Form12.Hide;;
form16.show;
end;

procedure TForm12.N3Click(Sender: TObject);
var vmsbox:Integer;
begin
vmsbox:=MessageDlgPos('Вы уверены что хотите выйти?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   Application.Terminate;
if vmsbox=7 then  Form12.Show;
end;

procedure TForm12.N6Click(Sender: TObject);
begin

form5.show;
end;

procedure TForm12.N9Click(Sender: TObject);
var vmsbox:Integer;
begin
if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
   vmsbox:=MessageDlgPos('Вы хотите удалить запись?',mtinformation,[mbyes,mbno],0,500,300);
if vmsbox=6 then   dbGrid1.DataSource.DataSet.Delete;
if vmsbox=7 then  Form12.Show;end;


end;

procedure TForm12.PDF1Click(Sender: TObject);
begin
if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxPDFExport1);end;
end;

procedure TForm12.RTF1Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxRTFExport1);end;
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
Form12.ADOQuery1.Filtered:=False;
Form12.ADOQuery1.Filter:='give like %M%';
Form12.ADOQuery1.Filtered:=True;
end;

procedure TForm12.N12Click(Sender: TObject);
begin
form20.show;
end;

procedure TForm12.N11Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm12.N13Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else 
form21.show;
end;

procedure TForm12.N17Click(Sender: TObject);
begin
if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
  Form19.show;
Form19.frxReport4.ShowReport(); end;
end;

procedure TForm12.PPTX1Click(Sender: TObject);
begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxPPTXExport1);
end;

procedure TForm12.XLSX1Click(Sender: TObject);
begin
 Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxXLSXExport1);
end;

procedure TForm12.JPEG1Click(Sender: TObject);
begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxJPEGExport1);
end;

procedure TForm12.N18Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxPDFExport1);end;
end;

procedure TForm12.RTF2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxRTFExport1); end;
end;

procedure TForm12.N19Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxDOCXExport1);end;
end;

procedure TForm12.N20Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxPPTXExport1);end;
end;

procedure TForm12.XLSX2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
 Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxXLSXExport1);end;
end;

procedure TForm12.JPEG2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport4.ShowReport();
Form19.frxReport4.Export(Form12.frxJPEGExport1); end;
end;

procedure TForm12.PDF2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxPDFExport1);end;
end;

procedure TForm12.RTF3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxRTFExport1);end;
end;

procedure TForm12.DOCX1Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxDOCXExport1);end;
end;

procedure TForm12.PTTX1Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxPPTXExport1);end;
end;

procedure TForm12.XLSX3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxXLSXExport1);end;
end;

procedure TForm12.JPEG3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport1.ShowReport();
Form19.frxReport1.Export(Form12.frxJPEGExport1);end;
end;

procedure TForm12.PDF3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxPDFExport1);end;
end;

procedure TForm12.RTF4Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxRTFExport1);end;
end;

procedure TForm12.DOCX2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxDOCXExport1);end;
end;

procedure TForm12.PTTX2Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxPPTXExport1); end;
end;

procedure TForm12.XLSX4Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxXLSXExport1);end;
end;

procedure TForm12.JPEG4Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport3.ShowReport();
Form19.frxReport3.Export(Form12.frxJPEGExport1); end;
end;

procedure TForm12.PDF4Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxPDFExport1);end;
end;

procedure TForm12.RTF5Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxRTFExport1); end;
end;

procedure TForm12.DOCX3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxDOCXExport1);end;
end;

procedure TForm12.PTTX3Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxPPTXExport1);end;
end;

procedure TForm12.XLSX5Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxXLSXExport1);end;
end;

procedure TForm12.JPEG5Click(Sender: TObject);
begin
  if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
Form19.frxReport2.ShowReport();
Form19.frxReport2.Export(Form12.frxJPEGExport1);end;
end;

procedure TForm12.N10Click(Sender: TObject);
begin
 if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
  Form19.show;
Form19.frxReport1.ShowReport();
end;

end;
procedure TForm12.N21Click(Sender: TObject);
begin
if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
  Form19.show;
Form19.frxReport3.ShowReport(); end;
end;

procedure TForm12.N22Click(Sender: TObject);
begin
if con1.Connected=false then  MessageBox(0,'Не подключена база данных','Ошибка',MB_ICONWARNING or MB_OK) else begin
  Form19.show;
Form19.frxReport2.ShowReport(); end;
end;

procedure TForm12.N24Click(Sender: TObject);
begin
 Form4.show;
end;

procedure TForm12.N25Click(Sender: TObject);
begin
 ShellExecute(0,PChar('OPEN'),pCHAR('NewProject.chm'),nil,nil,SW_SHOW);
end;

end.
