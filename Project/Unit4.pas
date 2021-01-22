unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit1, Unit2;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
form4.Hide;
form2.show;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  CheckBox1.Visible:=False;
  CheckBox2.Visible:=False;
  if CheckBox2.Checked=True then BitBtn2.Visible:=true ;
if Form2.CheckBox1.Checked=False then BitBtn2.Visible:=False;
if Form2.CheckBox1.Checked=True then BitBtn1.Visible:=False;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
Form2.Show;
Form4.Hide;
end;

end.
