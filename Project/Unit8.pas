unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, DbChart, DB, ADODB, StdCtrls,
  ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
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
  Form8: TForm8;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
Form8.Close;
form6.show;
end;

end.
