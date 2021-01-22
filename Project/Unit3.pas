unit Unit3;

interface

uses
  SysUtils, Classes, ExtCtrls;

type
  TDataModule3 = class(TDataModule)
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

uses Unit1, Unit2, Unit4, Unit13, Unit16, Unit12;

{$R *.dfm}

procedure TDataModule3.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=True;
form1.StatusBar1.Panels[2].Text:=DateTimetostr(time+date);
end;

procedure TDataModule3.Timer2Timer(Sender: TObject);
begin
 timer1.enabled:=true;
form2.StatusBar1.Panels[2].Text:=DateTimeToStr(date+time);
end;

procedure TDataModule3.Timer3Timer(Sender: TObject);
begin
 timer3.enabled:=true;
form4.StatusBar1.Panels[2].Text:=DateTimeToStr(date+time);
end;

procedure TDataModule3.Timer4Timer(Sender: TObject);
begin
timer4.enabled:=true;
form13.StatusBar1.Panels[2].Text:=DateTimeToStr(date+time);
end;

procedure TDataModule3.Timer5Timer(Sender: TObject);
begin
timer5.enabled:=true;
form16.StatusBar1.Panels[2].Text:=DateTimeToStr(date+time);
end;

procedure TDataModule3.Timer6Timer(Sender: TObject);
begin
timer6.enabled:=true;
form12.StatusBar1.Panels[2].Text:=DateTimeToStr(date+time);
end;

end.
