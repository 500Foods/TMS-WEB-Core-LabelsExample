program Project1;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  Unit1 in 'Unit1.pas' {Form1: TWebForm} {*.html},
  UnitLabelName in 'UnitLabelName.pas' {LabelNameForm: TWebForm} {*.html},
  UResource in 'UResource.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TLabelNameForm, LabelNameForm);
  Application.Run;
end.
