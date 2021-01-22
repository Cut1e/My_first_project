unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, TeeProcs, Chart, DbChart, DB, ADODB,
  ExtCtrls;

type
  TForm23 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    con1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    DBChart1: TDBChart;
    CheckBox1: TCheckBox;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm23.Button1Click(Sender: TObject);
begin
Form23.Close;
form6.show;
end;

end.
