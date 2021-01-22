unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxPreview;

type
  TForm19 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

uses
  Unit12, Unit2, Unit13, Unit16;

{$R *.dfm}

end.
