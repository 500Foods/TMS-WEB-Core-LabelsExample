unit UnitLabelName;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.WebCtrls;

type
  TLabelNameForm = class(TWebForm)
    divDialog: TWebHTMLDiv;
    divFormLabelGroup: TWebHTMLDiv;
    labelGroup: TWebLabel;
    divFormLabelName: TWebHTMLDiv;
    labelName: TWebLabel;
    Title: TWebLabel;
    WebHTMLDiv3: TWebHTMLDiv;
    btnFormCancel: TWebButton;
    btnFormOK: TWebButton;
    btnFormClose: TWebButton;
    WebLabel1: TWebLabel;
    edtLabelName: TWebEdit;
    cmbGroupName: TWebComboBox;
    labelFormError: TWebLabel;
    procedure btnFormOKClick(Sender: TObject);
    procedure btnFormCancelClick(Sender: TObject);
    procedure btnFormCloseClick(Sender: TObject);
    procedure edtLabelNameChange(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
    procedure WebFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelNameForm: TLabelNameForm;

implementation

{$R *.dfm}

procedure TLabelNameForm.edtLabelNameChange(Sender: TObject);
var
  Valid: Boolean;
  ValidMsg: String;
begin
  Valid := True;
  if (trim(edtLabelName.Text) = '') then
  begin
    Valid := False;
    ValidMsg := 'Label Name must have a value';
  end
  else if (Trim(cmbGroupName.Text) = '') then
  begin
    Valid := False;
    ValidMsg := 'Label Name must have a value';
  end
  else if (UpperCase(Trim(cmbGroupName.Text)) = 'SAMPLES') then
  begin
    Valid := False;
    ValidMsg := 'Group Name cannot be "Samples"';
  end;

  if Valid then
  begin
    btnFormOK.Enabled := True;
    labelFormError.Caption := '';
  end
  else
  begin
    btnFormOK.Enabled := False;
    labelFormError.Caption := ValidMsg;
  end;

end;

procedure TLabelNameForm.WebFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE)
  then ModalResult := mrCancel;

  if (Key = VK_RETURN) and (btnFormOK.Enabled)
  then ModalResult := mrOk;
end;

procedure TLabelNameForm.WebFormShow(Sender: TObject);
begin
  asm
    setTimeout(function() { document.getElementById("edtLabelName").select(); },100);
  end;
end;

procedure TLabelNameForm.btnFormCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TLabelNameForm.btnFormOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TLabelNameForm.btnFormCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
