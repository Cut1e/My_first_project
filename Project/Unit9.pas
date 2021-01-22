unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  DB, ADODB;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    con1: TADOConnection;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
Form9.Close;
form6.show;
end;

end.
