unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm21 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm21.CheckBox1Click(Sender: TObject);
begin

if Form21.CheckBox1.Checked=true  then begin
  CheckBox2.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by give');
    Open;
  end;
end;

  end;


procedure TForm21.CheckBox2Click(Sender: TObject);
begin

 if Form21.CheckBox2.Checked=true  then begin
     CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
    CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by cena');
    Open;
  end;end;

end;

procedure TForm21.CheckBox3Click(Sender: TObject);
begin

if Form21.CheckBox3.Checked=true  then begin
  CheckBox1.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by eld');
    Open;
  end;
end;

end;

procedure TForm21.CheckBox4Click(Sender: TObject);
begin
if Form21.CheckBox4.Checked=true  then begin
  CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by eln');
    Open;
  end;
end;

end;

procedure TForm21.CheckBox5Click(Sender: TObject);
begin

if Form21.CheckBox5.Checked=true  then begin
    CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by d');
    Open;
  end;
end;
end;

procedure TForm21.CheckBox6Click(Sender: TObject);
begin

if Form21.CheckBox6.Checked=true  then begin
    CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by n');
    Open;
  end;
end;

end;

procedure TForm21.CheckBox7Click(Sender: TObject);
begin

if Form21.CheckBox7.Checked=true  then begin
    CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox2.Checked:=False;
   CheckBox8.Checked:=False;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot order by m');
    Open;
  end;
end;

end;

procedure TForm21.CheckBox8Click(Sender: TObject);
begin
if Form21.CheckBox8.Checked=true  then begin
CheckBox1.Checked:=False;
  CheckBox3.Checked:=False;
  CheckBox4.Checked:=False;
  CheckBox5.Checked:=False;
  CheckBox6.Checked:=False;
  CheckBox2.Checked:=False;
  CheckBox7.Checked:=false;
  with Form12.ADOQuery1 do begin
    close;
    SQL.Clear;
    SQL.Add('select * from ot ');
    Open;
  end;
end;
end;


end.
