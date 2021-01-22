unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  DB, ADODB;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    CheckBox1: TCheckBox;
    con1: TADOConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Close;
form6.show;
end;

end.
