unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, DbChart, ExtCtrls, DB, ADODB,
  StdCtrls, Menus;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    ComboBox1: TComboBox;
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit5, Unit9, Unit8, Unit10, Unit11, Unit22, Unit23;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
form5.show;
Form6.Close;

end;

procedure TForm6.Button2Click(Sender: TObject);
var i:Integer;
begin
i:=ComboBox1.ItemIndex;
case i of
0:if Form8.CheckBox1.Checked=false then MessageBox(0,'Не подключена база курса','Ошибка',MB_ICONWARNING or MB_OK)else  begin Form6.hide; form8.show;end;
1: if Form9.CheckBox1.Checked=false then MessageBox(0,'Не подключена база курса','Ошибка',MB_ICONWARNING or MB_OK)else begin Form6.Hide;form9.show;end;
2:if Form10.CheckBox1.Checked=false then MessageBox(0,'Не подключена база курса','Ошибка',MB_ICONWARNING or MB_OK) else begin Form6.hide;form10.show;end;
3: if Form11.CheckBox1.Checked=false then MessageBox(0,'Не подключена база курса','Ошибка',MB_ICONWARNING or MB_OK)else begin Form6.Hide;form11.show;end;
4: if Form23.CheckBox1.Checked=false then MessageBox(0,'Не подключена база курса','Ошибка',MB_ICONWARNING or MB_OK)else begin Form6.Hide;form23.show;end;
end;



end;procedure TForm6.N1Click(Sender: TObject);
begin
form22.show;
end;

end.
