unit Unit1;

interface

uses
  System.SysUtils,
  System.Types,
  System.Classes,

  WEBLib.TMSFNCPDFCoreLibBase,
  WEBLIB.TMSFNCTypes,
  WEBLib.TMSFNCUtils,
  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  WEBLib.ExtCtrls,
  WEBLib.WebCtrls,
  WEBLib.ComCtrls,
  WEBLib.StdCtrls,
  WEBLib.DropDown,
  WEBLib.Crypto,

  JSDelphiSystem,
  JS,
  Web,

  VCL.Controls,
  VCL.StdCtrls,
  VCL.TMSFNCWXBarcode,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCPDFLib,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCWXPDFToolbar,
  VCL.TMSFNCCustomScrollControl,
  VCL.TMSFNCCustomList,
  VCL.TMSFNCWXPDFThumbnailList,
  VCL.TMSFNCWebBrowser,
  VCL.TMSFNCCustomWEBControl,
  VCL.TMSFNCWXPDFViewer,
  VCL.TMSFNCImage,
  VCL.TMSFNCGraphicsPDFEngine,
  VCL.TMSFNCCustomComponent,
  VCL.TMSFNCBitmapContainer;

type
  TForm1 = class(TWebForm)
    divLabelsList: TWebHTMLDiv;
    divMain: TWebHTMLDiv;
    splitterMain: TWebSplitter;
    divTop: TWebHTMLDiv;
    pageControl: TWebPageControl;
    pagePrint: TWebTabSheet;
    pageEdit: TWebTabSheet;
    pageData: TWebTabSheet;
    divButtonHolder: TWebPanel;
    btnPagePrint: TWebButton;
    btnPageEdit: TWebButton;
    btnPageData: TWebButton;
    divPrintButtonsHolder: TWebHTMLDiv;
    labelPrintLabel: TWebLabel;
    labelPrint: TWebLabel;
    btnPrintDelete: TWebButton;
    btnPrintRename: TWebButton;
    btnPrintClone: TWebButton;
    btnPrintExport: TWebButton;
    divPrintingButtonsHolder: TWebHTMLDiv;
    btnPrintPDF: TWebButton;
    divEditButtonsHolder: TWebHTMLDiv;
    labelEdit: TWebLabel;
    divPrintHolder: TWebHTMLDiv;
    divPrintOptionsHolder: TWebHTMLDiv;
    splitterPrint: TWebSplitter;
    divPrintPreviewHolder: TWebHTMLDiv;
    btnDownloadPDF: TWebButton;
    btnEditRename: TWebButton;
    btnEditClone: TWebButton;
    btnEditExport: TWebButton;
    btnEditDelete: TWebButton;
    btnEditImport: TWebButton;
    btnPrintImport: TWebButton;
    divEditor: TWebHTMLDiv;
    divEditPropertiesHolder: TWebHTMLDiv;
    splitterEditor: TWebSplitter;
    divEditPreviewHolder: TWebHTMLDiv;
    divEditPropertyButtons: TWebHTMLDiv;
    ddPropertiesListHolder: TWebDropDownControl;
    btnEditPropertiesAdd: TWebButton;
    panelPropertiesList: TWebPanel;
    labelEditLabel: TWebLabel;
    divEditProperties: TWebHTMLDiv;
    divEditPropertiesDetail: TWebHTMLDiv;
    splitterProperties: TWebSplitter;
    btnEditPropertiesDelete: TWebButton;
    btnEditPreview: TWebButton;
    wxBarcode: TTMSFNCWXBarcode;
    divDatasetButtonsHolder: TWebHTMLDiv;
    labelDatasetLabel: TWebLabel;
    labelDataset: TWebLabel;
    btnDatasetDelete: TWebButton;
    btnDatasetExport: TWebButton;
    btnDatasetImport: TWebButton;
    divDatasetsHolder: TWebHTMLDiv;
    divDatasetList: TWebHTMLDiv;
    divDataset: TWebHTMLDiv;
    WebSplitter1: TWebSplitter;
    btnDatasetClone: TWebButton;
    btnDatasetRename: TWebButton;
    TMSFNCWXPDFViewer1: TTMSFNCWXPDFViewer;
    TMSFNCWXPDFThumbnailList1: TTMSFNCWXPDFThumbnailList;
    TMSFNCWXPDFToolbar1: TTMSFNCWXPDFToolbar;
    btnUploadPDF: TWebButton;
    WebOpenDialog1: TWebOpenDialog;
    btnGenerateLabelPDF: TWebButton;
    divTest: TWebHTMLDiv;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    procedure WebFormCreate(Sender: TObject);
    procedure btnPagePrintClick(Sender: TObject);
    procedure btnPageEditClick(Sender: TObject);
    procedure btnPageDataClick(Sender: TObject);
    procedure NewLabelSelected(LabelID: String; LabelName: String; GroupName: String; Locked: Boolean);
    procedure NewDatasetSelected(DatasetID: String; DatasetName: String; GroupName: String; Locked: Boolean);
    [async] procedure btnPrintRenameClick(Sender: TObject);
    [async] procedure btnPrintCloneClick(Sender: TObject);
    procedure btnPrintDeleteClick(Sender: TObject);
    procedure ddPropertiesListHolderDropDown(Sender: TObject);
    procedure NewPropertySelected(ID: String; Group: String; Name: String; Options: JSValue);
    procedure btnEditPropertiesAddClick(Sender: TObject);
    procedure btnEditPropertiesDeleteClick(Sender: TObject);
    procedure btnEditPreviewClick(Sender: TObject);
    function GenerateBarcode(Barcode: String; Data: String; BarWidth: INteger; BarHeight: Integer; BarScale: Integer):String;
    procedure btnDownloadPDFClick(Sender: TObject);
    [async] procedure btnUploadPDFClick(Sender: TObject);
    procedure btnPrintPDFClick(Sender: TObject);
    [async] procedure btnGenerateLabelPDFClick(Sender: TObject);
    procedure splitterEditorMove(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    tabLabelsList: JSValue;
    tabEditProperties: JSValue;
    tabPrintProperties: JSValue;
    tabDatasetList: JSValue;
    tabDataset: JSValue;

    CurrentLabelID: String;
    CurrentLabelName: String;
    CurrentGroupName: String;

    CurrentPropertyID: String;
    CurrentPropertyName: String;
    CurrentPropertyGroup: String;
    CurrentPropertyOptions: JSValue;

    CurrentDatasetID: String;
    CurrentDatasetName: String;
    CurrentDatasetGroup: String;

    CurrentPDFData: String;
    CurrentLabel: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  UnitLabelName, UResource;

procedure TForm1.btnEditPropertiesDeleteClick(Sender: TObject);
begin
  asm
    var rows = this.tabEditProperties.getSelectedRows();
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].getTreeParent() == false) {
        this.tabEditProperties.deleteRow(rows[i]);
      }
      else {
        this.tabEditProperties.deleteRow(rows[i].getTreeParent());
      }
    }
    this.tabEditProperties.redraw(true);
  end;
end;

procedure TForm1.btnGenerateLabelPDFClick(Sender: TObject);
var
  p: TTMSFNCPDFLib;
  g: TTMSFNCGraphicsPDFEngine;
  m: TMemoryStream;
  b: TTMSFNCBitmap;
begin
  p := TTMSFNCPDFLib.Create;
  g := TTMSFNCGraphicsPDFEngine.Create(p);
  try
    p.BitmapContainer := TMSFNCBitmapContainer1;
    p.BeginDocument;
    p.Header := '';
    p.HeaderSize := 0;
    p.Footer := '';
    p.FooterSize := 0;
    p.PageSize := psLetter;
    p.PageOrientation := poPortrait;
    p.NewPage;

    b := TTMSFNCUtils.CreateBitmapFromBase64(CurrentLabel);
    p.graphics.DrawImage(b, gcWhite, RectF(50,350,550,600), true, true, itOriginal, 1.0, true);

    m := p.EndDocument;
    CurrentPDFData := TTMSFNCUtils.SaveStreamToBase64(m);
    TMSFNCWXPDFViewer1.LoadFromBase64(CurrentPDFData);

  finally
    p.Free;
    m.Free;
  end;
end;

procedure TForm1.btnPageDataClick(Sender: TObject);
begin
  btnPagePrint.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnPageEdit.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnPageData.ElementHandle.classList.replace('btn-secondary','btn-primary');
  pageControl.TabIndex := 2;
end;

procedure TForm1.btnPageEditClick(Sender: TObject);
begin
  btnPagePrint.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnPageEdit.ElementHandle.classList.replace('btn-secondary','btn-primary');
  btnPageData.ElementHandle.classList.replace('btn-primary','btn-secondary');
  pageControl.TabIndex := 1;
end;

procedure TForm1.btnPagePrintClick(Sender: TObject);
begin
  btnPagePrint.ElementHandle.classList.replace('btn-secondary','btn-primary');
  btnPageEdit.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnPageData.ElementHandle.classList.replace('btn-primary','btn-secondary');
  pageControl.TabIndex := 0;
end;

procedure TForm1.btnPrintCloneClick(Sender: TObject);
var
  NewLabelID: String;
  NewLabelName :String;
  NewGroupName: String;
  NewLabel: TLabelNameForm;
  NewEntry: TModalResult;
  GroupList: Array of String;
  GroupStringList: TStringList;
  i: Integer;
begin
  NewLabelID := TGUID.NewGUID.ToString;
  NewLabelName := '';
  NewGroupName := '';

  // Get list of unique Group Names from table
  asm
    var groups = [];
    var rows = this.tabLabelsList.getRows();
    for (var i = 0;  i < rows.length; i++) {
      groups.push(rows[i].getCell('GROUP').getValue());
    }
    GroupList = [... new Set(groups)];
  end;

  // bulid a new list that is case-senstive, without duplicates and
  // without the "Samples" entry, ready to pass to a TWebComboBox
  GroupStringList := TStringList.Create;
  GroupStringList.Duplicates := System.Types.dupIgnore;
  GroupStringList.CaseSensitive := True;
  GroupStringList.Sorted := True;
  for i := 0 to Length(GroupList) - 1 do
    if (Uppercase(Trim(GroupList[i]))) <> 'SAMPLES'
    then GroupStringList.Add(Trim(GroupList[i]));

  // Create the Popup Form
  NewLabel := TLabelNameForm.Create(Self);
  NewLabel.Popup := True;
  NewLabel.PopupOpacity := 0.7;

  // Pass in the variables we want to use as defaults
  await( TLabelNameForm, NewLabel.Load );
  NewLabel.Title.Caption := 'Clone Label';
  NewLabel.edtLabelName.Text := CurrentLabelName+' (copy)';
  NewLabel.cmbGroupName.Items := GroupStringList;
  NewLabel.cmbGroupName.Text := CurrentGroupName;
  NewLabel.edtLabelNameChange(nil);
  NewLabel.edtLabelName.SetFocus;
//  NewLabel.edtLabelName.SelectAll;

  // Wait for the form to be closed, and then act accordingly
  try
    NewEntry := await( TModalResult, NewLabel.Execute );

    if NewEntry = mrOk then
    begin
      NewGroupName := Trim(NewLabel.cmbGroupName.Text);
      NewLabelName := Trim(NewLabel.edtLabelName.Text);
      asm
        this.tabLabelsList.addRow({
          ID: NewLabelID,
          GROUP: NewGroupName,
          LABEL: NewLabelName,
          LOCK: false
        })
        .then(function(row){
          row.getTable().deselectRow();
          row.select();
          row.getTable().setGroupBy('');
          row.getTable().setSort([
            {column:"LABEL", dir:"asc"},
            {column:"GROUP", dir:"asc"}
          ]);
          row.getTable().setGroupBy('GROUP');
          var labelID = row.getCell("ID").getValue();
          var labelName = row.getCell("LABEL").getValue();
          var groupName = row.getCell("GROUP").getValue();
          var locked = row.getCell("LOCK").getValue();
          pas.Unit1.Form1.NewLabelSelected(labelID, labelName, groupName, locked);
        });
      end;
    end;
  except on E: Exception do
    begin
      console.log('Excpetion: ['+E.ClassName+'] '+E.Message);
    end;
  end;


end;

procedure TForm1.btnPrintDeleteClick(Sender: TObject);
begin
  // Delete row and select another
  asm
    var table = this.tabLabelsList;
    var delrow = table.getRow(this.CurrentLabelID);
    if (delrow.getNextRow()) {
      var row = delrow.getNextRow();
    }
    else {
      var row = delrow.getPrevRow();
    }
    table.deleteRow(delrow);
    table.deselectRow();
    row.select();
    row.getTable().setGroupBy('');
    row.getTable().setSort([
      {column:"LABEL", dir:"asc"},
      {column:"GROUP", dir:"asc"}
    ]);
    row.getTable().setGroupBy('GROUP');
    var labelID = row.getCell("ID").getValue();
    var labelName = row.getCell("LABEL").getValue();
    var groupName = row.getCell("GROUP").getValue();
    var locked = row.getCell("LOCK").getValue();
    pas.Unit1.Form1.NewLabelSelected(labelID, labelName, groupName, locked);
  end;
end;

procedure TForm1.btnPrintRenameClick(Sender: TObject);
var
  NewLabelID: String;
  NewLabelName :String;
  NewGroupName: String;
  NewLabel: TLabelNameForm;
  NewEntry: TModalResult;
  GroupList: Array of String;
  GroupStringList: TStringList;
  i: Integer;
begin
  NewLabelID := CurrentLabelID;
  NewLabelName := CurrentLabelName;
  NewGroupName := CurrentGroupName;

  // Get list of unique Group Names from table
  asm
    var groups = [];
    var rows = this.tabLabelsList.getRows();
    for (var i = 0;  i < rows.length; i++) {
      groups.push(rows[i].getCell('GROUP').getValue());
    }
    GroupList = [... new Set(groups)];
  end;

  // Bulid a new list that is case-senstive, without duplicates and
  // without the "Samples" entry, ready to pass to a TWebComboBox
  GroupStringList := TStringList.Create;
  GroupStringList.Duplicates := System.Types.dupIgnore;
  GroupStringList.CaseSensitive := True;
  GroupStringList.Sorted := True;
  for i := 0 to Length(GroupList) - 1 do
    if (Uppercase(Trim(GroupList[i]))) <> 'SAMPLES'
    then GroupStringList.Add(Trim(GroupList[i]));

  // Create the Popup Form
  NewLabel := TLabelNameForm.Create(Self);
  NewLabel.Popup := True;
  NewLabel.PopupOpacity := 0.7;

  // Pass in the variables we want to use as defaults
  await( TLabelNameForm, NewLabel.Load );
  NewLabel.Title.Caption := 'Rename Label';
  NewLabel.edtLabelName.Text := CurrentLabelName;
  NewLabel.cmbGroupName.Items := GroupStringList;
  NewLabel.cmbGroupName.Text := CurrentGroupName;
  NewLabel.edtLabelNameChange(nil);
  NewLabel.edtLabelName.SetFocus;

  // Wait for the form to be closed, and then act accordingly
  try
    NewEntry := await( TModalResult, NewLabel.Execute );

    if NewEntry = mrOk then
    begin
      NewGroupName := Trim(NewLabel.cmbGroupName.Text);
      NewLabelName := Trim(NewLabel.edtLabelName.Text);
      asm
        this.tabLabelsList.updateRow(NewLabelID, {
          GROUP: NewGroupName,
          LABEL: NewLabelName,
        })
        .then(function(row){
          row.getTable().deselectRow();
          row.select();
          row.getTable().setGroupBy('');
          row.getTable().setSort([
            {column:"LABEL", dir:"asc"},
            {column:"GROUP", dir:"asc"}
          ]);
          row.getTable().setGroupBy('GROUP');
          var labelID = row.getCell("ID").getValue();
          var labelName = row.getCell("LABEL").getValue();
          var groupName = row.getCell("GROUP").getValue();
          var locked = row.getCell("LOCK").getValue();
          pas.Unit1.Form1.NewLabelSelected(labelID, labelName, groupName, locked);
        });
      end;
    end;
  finally
    NewLabel.Free;
  end;

end;

procedure TForm1.btnUploadPDFClick(Sender: TObject);
var
  success: boolean;
begin
  success := await(Boolean, WebOpenDialog1.Perform);
  if success then
  begin
    CurrentPDFData := await(string, WebOpenDialog1.Files[0].FileAsBase64);
    TMSFNCWXPDFViewer1.LoadFromBase64(CurrentPDFData);
  end;
end;

procedure TForm1.ddPropertiesListHolderDropDown(Sender: TObject);
begin
  asm
    this.tabPropertiesList.redraw();
  end;
end;

function TForm1.GenerateBarcode(Barcode, Data: String; BarWidth:Integer; BarHeight: Integer; BarScale: Integer): String;
var
  img: TTMSFNCBitmap;
begin

  if (Barcode = 'Code39') then
  begin
    wxBarcode.BarcodeType := bciCode39;
    wxBarCode.Text := UpperCase(Data);
  end;

  wxBarCode.Scale := BarScale;
  wxBarCode.Width := BarWidth;
  wxBarCode.Height := BarHeight;

  img := wxBarcode.GetBarcode(Data);
  asm
    Result = img.FData;
  end;

end;

procedure TForm1.NewDatasetSelected(DatasetID, DatasetName, GroupName: String;
  Locked: Boolean);
begin
  labelDataset.HTML := '<div style="font-size:16px;">'+
                         '<span style="color: white;">'+GroupName+'</span>'+
                         '<span style="color: gray"> / </span>'+
                         '<span style="color: white">'+DatasetName+'</span>'+
                       '</div>';

  if (Locked) then
  begin
    btnDatasetRename.Enabled := False;
    btnDatasetDelete.Enabled := False;
  end
  else
  begin
    btnDatasetRename.Enabled := True;
    btnDatasetDelete.Enabled := True;
  end;

  CurrentDatasetID := DatasetID;
  CurrentDatasetName := DatasetName;
  CurrentDatasetGroup := GroupName;
end;

procedure TForm1.NewLabelSelected(LabelID: String; LabelName: String; GroupName: String; Locked: Boolean);
begin
  labelPrint.HTML := '<div style="font-size:16px;">'+
                       '<span style="color: white;">'+GroupName+'</span>'+
                       '<span style="color: gray"> / </span>'+
                       '<span style="color: white">'+LabelName+'</span>'+
                     '</div>';
  labelEdit.HTML := labelPrint.HTML;

  if (Locked) then
  begin
    btnPrintRename.Enabled := False;
    btnPrintDelete.Enabled := False;
    btnEditRename.Enabled := False;
    btnEditDelete.Enabled := False;
  end
  else
  begin
    btnPrintRename.Enabled := True;
    btnPrintDelete.Enabled := True;
    btnEditRename.Enabled := True;
    btnEditDelete.Enabled := True;
  end;

  CurrentLabelID := LabelID;
  CurrentLabelName := LabelName;
  CurrentGroupName := GroupName;
end;

procedure TForm1.NewPropertySelected(ID, Group, Name: String;  Options: JSValue);
begin
  ddPropertiesListHolder.Text := Group+' / '+Name;
  CurrentPropertyID := ID;
  CurrentPropertyGroup := Group;
  CurrentPropertyName := Name;
  CurrentPropertyOptions := Options;
end;

procedure TForm1.splitterEditorMove(Sender: TObject);
begin
  btnEditPreviewClick(nil);
end;

procedure TForm1.btnDownloadPDFClick(Sender: TObject);
var
  FileData: WideString;
  FileSize: Integer;
  FileSend: TJSArrayBuffer;
  FileName: String;
  JSError: String;
begin
  FileData := CurrentPDFData;
  FileSize := Length(CurrentPDFData);
  FileName := 'labels.pdf';

  if (FileSize = 0 ) then
  begin
    // got nothing for you
    exit;
  end;

  // Ok, We've got a file
  JSError := '';
  try
    FileSend := BinaryStringToAB(window.atob(FileData));
    {$IFNDEF WIN32}
    asm
      try {
        function SaveAsFile(t,f,m) {
          try {
            var b = new Blob([t],{type:m});
            saveAs(b, f);
          } catch (e) {
            window.open("data:"+m+"," + encodeURIComponent(t), '_blank','');
          }
        }
        SaveAsFile(FileSend, FileName, "application/pdf");
      }
      catch(e) {
        JSError = e.message;
      }
    end;
    {$ENDIF}
  except on E: Exception do
    begin
      // something happened
    end;
  end;
  if (JSError <> '') then // something else happened
end;

procedure TForm1.btnEditPreviewClick(Sender: TObject);
var
  LabelData: String;

  LabelUnits: String;
  LabelDPI: Double;
  LabelTop: Double;
  LabelLeft: Double;
  LabelWidth: Double;
  LabelHeight: Double;
  LabelScaleX: Double;
  LabelScaleY: Double;

begin
  // Clear out whatever was there before
  divEditPreviewHolder.HTML.Text := '';

  // Default Label is 4" wide by 2" tall label at 600dpi
  LabelUnits := 'in';
  LabelDPI := 600;
  LabelTop := 0;
  LabelLeft := 0;
  LabelWidth := 4;
  LabelHeight := 2;

  // Get Layout data from Properties
  asm
    var rows = this.tabEditProperties.getRows();
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].getCell('PROPERTY').getValue() == 'Layout') {
        var layoutOptions = rows[i].getCell('OPTIONS').getValue();
        for (var j = 0; j < layoutOptions.length; j++) {
          if (layoutOptions[j].PROPERTY == 'Units') {
            LabelUnits = layoutOptions[j].VALUE;
          } else if (layoutOptions[j].PROPERTY == 'Width') {
            LabelWidth = layoutOptions[j].VALUE;
          } else if (layoutOptions[j].PROPERTY == 'Height') {
            LabelHeight = layoutOptions[j].VALUE;
          } else if (layoutOptions[j].PROPERTY == 'DPI') {
            LabelDPI = layoutOptions[j].VALUE;
          }
        }
      }
    }
  end;

  if (LabelUnits = 'in') then
  begin
    LabelWidth := LabelWidth * LabelDPI;
    LabelHeight := LabelHeight * LabelDPI;
  end;


  // Get the scale we'll need to display it in the space available
  LabelScaleX := (divEditPreviewHolder.Width - 20) / LabelWidth;
  LabelScaleY := (divEditPreviewHolder.Height - 20) / LabelHeight;
  if LabelScaleX > LabelScaleY
  then LabelScaleX := LabelScaleY;
  LabelTop := -(LabelHeight - (divEditPreviewHolder.Height - 20))/2;
  LabelLeft := -(LabelWidth - (divEditPreviewHolder.Width - 20))/2;

  LabelData := '<div id="divEditPreviewLabel" '+
                    'style="position:absolute; '+
                           'overflow:hidden; '+
                           'border-radius: 25px; '+
                           'top:'+FloatToStr(LabelTop+10)+'px; '+
                           'left:'+FloatToStr(LabelLeft+10)+'px; '+
                           'width:'+FloatToSTr(LabelWidth)+'px; '+
                           'height:'+FloatToStr(LabelHeight)+'px; '+
                           'background-color: white; '+
                           'transform: scale('+FloatToStr(LabelScaleX)+')">';

  // Process all of the rectangles
  asm
    var RectTop = '0px';
    var RectLeft = '0px';
    var RectWidth = '0px';
    var RectHeight = '0px';
    var RectStroke = 'none';
    var RectFill = 'none';
    var RectData = '';

    var rows = this.tabEditProperties.getRows();
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].getCell('PROPERTY').getValue() == 'Rectangle') {
        var rectOptions = rows[i].getCell('OPTIONS').getValue();
        for (var j = 0; j < rectOptions.length; j++) {
          if (rectOptions[j].PROPERTY == 'Top') {
            RectTop = rectOptions[j].VALUE;
          } else if (rectOptions[j].PROPERTY == 'Left') {
            RectLeft = rectOptions[j].VALUE;
          } else if (rectOptions[j].PROPERTY == 'Width') {
            RectWidth = rectOptions[j].VALUE;
          } else if (rectOptions[j].PROPERTY == 'Height') {
            RectHeight = rectOptions[j].VALUE;
          } else if (rectOptions[j].PROPERTY == 'Stroke') {
            RectStroke = rectOptions[j].VALUE;
          } else if (rectOptions[j].PROPERTY == 'Fill') {
            RectFill = rectOptions[j].VALUE;
          }
        }
        RectData += '<div style="position:absolute; '+
                               'top:'+RectTop+'; '+
                               'left:'+RectLeft+'; '+
                               'width:'+RectWidth+'; '+
                               'height:'+RectHeight+'; '+
                               'border:'+RectStroke+'; '+
                               'background:'+RectFill+';">'+
                    '</div>';
      }
    }
    LabelData += RectData;
  end;

  // Process all of the barcodes
  asm
    var BarTop = '0px';
    var BarLeft = '0px';
    var BarWidth = '0px';
    var BarHeight = '0px';
    var BarStroke = 'none';
    var BarFill = 'none';
    var BarValue = '';
    var BarData = '';
    var BarImage = '';
    var BarScale = '1';
    var BarRotation = '0deg';

    var rows = this.tabEditProperties.getRows();
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].getCell('PROPERTY').getValue() == 'Code39') {
        var BarOptions = rows[i].getCell('OPTIONS').getValue();
        for (var j = 0; j < BarOptions.length; j++) {
          if (BarOptions[j].PROPERTY == 'Top') {
            BarTop = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Left') {
            BarLeft = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Width') {
            BarWidth = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Height') {
            BarHeight = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Stroke') {
            BarStroke = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Fill') {
            BarFill = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Data') {
            BarValue = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Scale') {
            BarScale = BarOptions[j].VALUE;
          } else if (BarOptions[j].PROPERTY == 'Rotation') {
            BarRotation = BarOptions[j].VALUE;
          }
        }
        BarImage = pas.Unit1.Form1.GenerateBarcode('Code39', BarValue, parseInt(BarWidth), parseInt(BarHeight), BarScale);
        BarData += '<div style="position:absolute; '+
                               'display:flex; '+
                               'justify-content:center; '+
                               'align-items:middle; '+
                               'top:'+BarTop+'; '+
                               'left:'+BarLeft+'; '+
                               'width:'+BarWidth+'; '+
                               'height:'+BarHeight+'; '+
                               'border:'+BarStroke+'; '+
                               'transform: rotate('+BarRotation+'); '+
                               'background:'+BarFill+';">'+
                      '<img height=100% width=auto src='+BarImage+'>';
                    '</div>';
      }
    }
    LabelData += BarData;


  end;


  // Process all of the text
  asm
    var TextTop = '0px';
    var TextLeft = '0px';
    var TextWidth = '0px';
    var TextHeight = '0px';
    var TextStroke = 'none';
    var TextFill = 'none';
    var TextData = '';
    var TextValue = '';
    var TextFontFamily = 'Cairo';
    var TextFontSize = '64px';
    var TextFontColor = 'blue';
    var TextRotation = '0deg';
    var TextCornerTL = '20px';
    var TextCornerTR = '20px';
    var TextCornerBL = '20px';
    var TextCornerBR = '20px';
    var TextAlignment = 'center';

    var rows = this.tabEditProperties.getRows();
    for (var i = 0; i < rows.length; i++) {
      if (rows[i].getCell('PROPERTY').getValue() == 'Text') {
        var TextOptions = rows[i].getCell('OPTIONS').getValue();
        for (var j = 0; j < TextOptions.length; j++) {
          if (TextOptions[j].PROPERTY == 'Top') {
            TextTop = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Left') {
            TextLeft = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Width') {
            TextWidth = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Height') {
            TextHeight = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Stroke') {
            TextStroke = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Fill') {
            TextFill = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Text') {
            TextValue = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Font Family') {
            TextFontFamily = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Font Size') {
            TextFontSize = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Font Color') {
            TextFontColor = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Rotation') {
            TextRotation = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Alignment') {
            TextAlignment = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Top-Left Rounding ') {
            TextCornerTL = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Top-Right Rounding') {
            TextCornerTR = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Bottom-Left Rounding') {
            TextCornerBL = TextOptions[j].VALUE;
          } else if (TextOptions[j].PROPERTY == 'Bottom-Right Rounding') {
            TextCornerBR = TextOptions[j].VALUE;
          }
        }
        TextData += '<div style="position:absolute; '+
                                'display:flex; '+
                                'justify-content:center; '+
                                'align-items:middle; '+
                                'top:'+TextTop+'; '+
                                'left:'+TextLeft+'; '+
                                'width:'+TextWidth+'; '+
                                'height:'+TextHeight+'; '+
                                'font-family:'+TextFontFamily+'; '+
                                'font-size:'+TextFontSize+'; '+
                                'color:'+TextFontColor+'; '+
                                'transform: rotate('+TextRotation+'); '+
                                'border-top-left-radius:'+TextCornerTL+'; '+
                                'border-top-right-radius:'+TextCornerTR+'; '+
                                'border-bottom-left-radius:'+TextCornerBL+'; '+
                                'border-bottom-right-radius:'+TextCornerBR+'; '+
                                'border:'+TextStroke+'; '+
                                'background:'+TextFill+';">'+
                       TextValue+
                    '</div>';
      }
    }
    LabelData += TextData;
  end;


  divEditPreviewHolder.HTML.Text := LabelData+'</div>';

  asm
    domtoimage
      .toPng(document.getElementById("divEditPreviewLabel"), {width:2400, height:1200})
      .then(function (dataURI) {
        pas.Unit1.Form1.CurrentLabel = dataURI;
      });
  end;

end;

procedure TForm1.btnEditPropertiesAddClick(Sender: TObject);
begin
  if ddPropertiesListHolder.Text <> '' then
  begin
    asm
      var lut = []; for (var i=0; i<256; i++) { lut[i] = (i<16?'0':'')+(i).toString(16); }
      function e7() {
        var d0 = Math.random()*0xffffffff|0;
        var d1 = Math.random()*0xffffffff|0;
        var d2 = Math.random()*0xffffffff|0;
        var d3 = Math.random()*0xffffffff|0;
        return lut[d0&0xff]+lut[d0>>8&0xff]+lut[d0>>16&0xff]+lut[d0>>24&0xff]+'-'+
          lut[d1&0xff]+lut[d1>>8&0xff]+'-'+lut[d1>>16&0x0f|0x40]+lut[d1>>24&0xff]+'-'+
          lut[d2&0x3f|0x80]+lut[d2>>8&0xff]+'-'+lut[d2>>16&0xff]+lut[d2>>24&0xff]+
          lut[d3&0xff]+lut[d3>>8&0xff]+lut[d3>>16&0xff]+lut[d3>>24&0xff];
      }
      var newOptions = JSON.parse(JSON.stringify(this.CurrentPropertyOptions));
      for (var i = 0; i < newOptions.length; i++) {
        newOptions[i].ID = '[' + e7() + ']';
      }
      this.tabEditProperties.addRow({
        ID: '[' + e7() + ']',
        GROUP:this.CurrentPropertyGroup,
        PROPERTY:this.CurrentPropertyName,
        OPTIONS:newOptions
      });
      this.tabEditProperties.redraw(true);
    end;
  end;
end;

procedure TForm1.btnPrintPDFClick(Sender: TObject);
begin
  if (length(CurrentPDFData) = 0) then
  begin
    // got nothing for you
    exit;
  end;

  asm
    printJS({printable: this.CurrentPDFData, type: 'pdf', base64: true})
  end;

end;

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Always start on the first page regardless of where it was left in the IDE
  pageControl.TabIndex := 0;

  // Create the main LabelsList Tabulator table
  asm
    // Can copy samples but not edit them
    var samplelabels = [
      {"ID": "{FAC0C275-32DC-40C1-88EE-0082DB85CFDA}", "GROUP":"Sample Labels", "LABEL":"Business Card", "LOCK":true },
      {"ID": "{33BE2A01-AADD-4C18-9B23-4E64C8E73B72}", "GROUP":"Sample Labels", "LABEL":"2x4 Address",   "LOCK":true },
      {"ID": "{56C689F2-9582-49CB-81E4-55094B3E1935}", "GROUP":"Sample Labels", "LABEL":"4x6 Shipping",  "LOCK":true }
    ];

    // LabelsList Tabulator - the list of labels
    this.tabLabelsList = new Tabulator("#divLabelsList", {
      data: samplelabels,
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      groupBy: "GROUP",
      columnCalcs: "table",
      headerVisible: false,
      initialSort: [
        {column: "LABEL", dir: "asc"},
        {column:"GROUP", dir: "asc"}
      ],
      columns: [
        { title: "ID", field: "ID", width: 50, visible: false },
        { title: "Group", field: "GROUP", visible: false, sorter: "string" },
        { title: "Labels", field: "LABEL", bottomCalc: "count", headerSort: false, sorter: "string" },
        { title: "Locked", field: "LOCK", visible: false },
      ]
    });

    // Want to select the first sample as the default label
    this.tabLabelsList.on("tableBuilt", function(){
      var row = this.getRow("{FAC0C275-32DC-40C1-88EE-0082DB85CFDA}");
      row.select()
      var labelID = row.getCell("ID").getValue();
      var labelName = row.getCell("LABEL").getValue();
      var groupName = row.getCell("GROUP").getValue();
      var locked = row.getCell("LOCK").getValue();
      pas.Unit1.Form1.NewLabelSelected(labelID, labelName, groupName, locked);
    });

    // Do this whenever we click on a row
    this.tabLabelsList.on("rowClick", function(e,row){
      row.select();
      var labelID = row.getCell("ID").getValue();
      var labelName = row.getCell("LABEL").getValue();
      var groupName = row.getCell("GROUP").getValue();
      var locked = row.getCell("LOCK").getValue();
      pas.Unit1.Form1.NewLabelSelected(labelID, labelName, groupName, locked);
    });


    var PropertiesList = [
      {  "GROUP":"Basic", "PROPERTY":"Layout", "ID":"{755EFB09-7EA8-44CD-8AD6-8C560F3B9D3D}",
           "OPTIONS": [
            { "ID":"", "PROPERTY":"Units",  "EDITOR":"list",   "VALUE":"in", LIST:["px","cm","in","mm","em"] },
            { "ID":"", "PROPERTY":"Width",  "EDITOR":"number", "VALUE":"2"   },
            { "ID":"", "PROPERTY":"Height", "EDITOR":"number", "VALUE":"4"   },
            { "ID":"", "PROPERTY":"DPI",    "EDITOR":"number", "VALUE":"600" }
      ]},
      {  "GROUP":"Shapes", "PROPERTY":"Rectangle", "ID":"{1F5BF4A9-A5B1-48F3-BCAB-42E9CF16D871}",
           "OPTIONS": [
            { "ID":"", "PROPERTY":"Top",      "EDITOR":"number",  "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Left",     "EDITOR":"number",  "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Width",    "EDITOR":"number",  "VALUE":"200px" },
            { "ID":"", "PROPERTY":"Height",   "EDITOR":"number",  "VALUE":"50px"  },
            { "ID":"", "PROPERTY":"Rotation", "EDITOR":"number",  "VALUE":"0deg"  },
            { "ID":"", "PROPERTY":"Stroke",   "EDITOR":"text",    "VALUE":"2px solid black" },
            { "ID":"", "PROPERTY":"Fill",     "EDITOR":"text",    "VALUE":"gray"  }
      ]},
      {  "GROUP":"Shapes", "PROPERTY":"Rounded Rectangle", "ID":"{92F8EC44-3A07-4F70-8EAC-B1256E6E1788}",
           "OPTIONS": [
            { "ID":"", "PROPERTY":"Top",                   "EDITOR":"number", "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Left",                  "EDITOR":"number", "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Width",                 "EDITOR":"number", "VALUE":"200px" },
            { "ID":"", "PROPERTY":"Height",                "EDITOR":"number", "VALUE":"50px"  },
            { "ID":"", "PROPERTY":"Rotation",              "EDITOR":"number", "VALUE":"0deg"  },
            { "ID":"", "PROPERTY":"Stroke",                "EDITOR":"text",   "VALUE":"2px solid black" },
            { "ID":"", "PROPERTY":"Fill",                  "EDITOR":"text",   "VALUE":"gray"  },
            { "ID":"", "PROPERTY":"Top-Left Rounding",     "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Top-Right Rounding",    "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Bottom-Left Rounding",  "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Bottom-Right Rounding", "EDITOR":"number", "VALUE":"20px"  }
      ]},
      {  "GROUP":"Simple Barcodes", "PROPERTY":"Code39", "ID":"{738A0CF6-3254-4CE1-A3AE-EC025BA910C0}",
           "OPTIONS": [
            { "ID":"", "PROPERTY":"Top",      "EDITOR":"number",  "VALUE":"200px"  },
            { "ID":"", "PROPERTY":"Left",     "EDITOR":"number",  "VALUE":"0px"    },
            { "ID":"", "PROPERTY":"Width",    "EDITOR":"number",  "VALUE":"2400px" },
            { "ID":"", "PROPERTY":"Height",   "EDITOR":"number",  "VALUE":"800px"  },
            { "ID":"", "PROPERTY":"Stroke",   "EDITOR":"text",    "VALUE":"none"   },
            { "ID":"", "PROPERTY":"Fill",     "EDITOR":"text",    "VALUE":"none"   },
            { "ID":"", "PROPERTY":"Rotation", "EDITOR":"number",  "VALUE":"0deg"   },
            { "ID":"", "PROPERTY":"Color",    "EDITOR":"text",    "VALUE":"black"  },
            { "ID":"", "PROPERTY":"Data",     "EDITOR":"text",    "VALUE":"CODE-39-ONLY-UPPERCASE" },
            { "ID":"", "PROPERTY":"Scale",    "EDITOR":"number",  "VALUE":"5"  },
      ]},
      {  "GROUP":"Text", "PROPERTY":"Text", "ID":"{C1437744-7668-4FFE-8A55-8AE7A911DE40}",
           "OPTIONS": [
            { "ID":"", "PROPERTY":"Text",                  "EDITOR":"text",   "VALUE":"Sample Text"  },
            { "ID":"", "PROPERTY":"Font Family",           "EDITOR":"text",   "VALUE":"Cairo" },
            { "ID":"", "PROPERTY":"Font Size",             "EDITOR":"number", "VALUE":"64px"  },
            { "ID":"", "PROPERTY":"Font Color",            "EDITOR":"number", "VALUE":"blue"  },
            { "ID":"", "PROPERTY":"Alignment",             "EDITOR":"text",   "VALUE":"center"},
            { "ID":"", "PROPERTY":"Top",                   "EDITOR":"number", "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Left",                  "EDITOR":"number", "VALUE":"10px"  },
            { "ID":"", "PROPERTY":"Width",                 "EDITOR":"number", "VALUE":"200px" },
            { "ID":"", "PROPERTY":"Height",                "EDITOR":"number", "VALUE":"50px"  },
            { "ID":"", "PROPERTY":"Rotation",              "EDITOR":"number", "VALUE":"0deg"  },
            { "ID":"", "PROPERTY":"Stroke",                "EDITOR":"text",   "VALUE":"2px solid black" },
            { "ID":"", "PROPERTY":"Fill",                  "EDITOR":"text",   "VALUE":"cyan"  },
            { "ID":"", "PROPERTY":"Top-Left Rounding",     "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Top-Right Rounding",    "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Bottom-Left Rounding",  "EDITOR":"number", "VALUE":"20px"  },
            { "ID":"", "PROPERTY":"Bottom-Right Rounding", "EDITOR":"number", "VALUE":"20px"  }
      ]},

    ]

    // PropertiesLIst Tabulator - Used to provide dropdown to pick properties
    this.tabPropertiesList = new Tabulator("#panelPropertiesList", {
      data: PropertiesList,
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      groupBy: "GROUP",
      headerVisible: false,
      columns: [
        { title: "ID", field: "ID", width: 50, visible: false },
        { title: "Group", field: "GROUP", visible: false },
        { title: "Property", field: "PROPERTY", visible: true },
        { title: "Options", field: "OPTIONS", visible: false }
      ]
    });

    // Do this whenever we click on a row
    this.tabPropertiesList.on("rowClick", function(e,row){
      row.select();
      var ID = row.getCell("ID").getValue();
      var GroupName = row.getCell('GROUP').getValue();
      var PropertyName = row.getCell("PROPERTY").getValue();
      var Options = row.getCell("OPTIONS").getValue().slice();
      pas.Unit1.Form1.NewPropertySelected(ID, GroupName, PropertyName, Options);
    });


    // This is the super-fancy custom column editor that is trying to do what
    // Delphi Object Inspector does - each row in the table can potentially
    // have a different editor.  Crappy part is that Tabulator has all these
    // editors built-in, but no way to select one of them to use.
    var EditProperties = function(cell, onRendered, success, cancel, editorParams) {

      var edit = cell.getRow().getCell('EDITOR').getValue();

      if (edit == 'number') {
        var editor = document.createElement("input");
        editor.setAttribute("type", "TEXT");
        editor.classList.add("bg-white","w-100","h-100","border-0","px-2");
        editor.value = cell.getValue();
      } else if (edit == 'text') {
        var editor = document.createElement("input");
        editor.setAttribute("type", "TEXT");
        editor.classList.add("bg-white","w-100","h-100","border-0","px-2");
        editor.value = cell.getValue();
      } else if (edit == 'list') {
        var editor = document.createElement("select");
        editor.classList.add("bg-white","w-100","h-100","border-0","px-2");
        editor.innerHTML = cell.getRow().getCell('LIST').getValue().map(e=>{return `<option value="${e}">${e}</option>`})
        editor.value = cell.getValue();
      }

      onRendered(function(){
        editor.focus();
      });
      function successFunc(){
        success(editor.value);
      }
      editor.addEventListener("change", successFunc);
      editor.addEventListener("blur", successFunc);
      return editor;
    };

    // EditProperties Tabulator - Properties TreeView for one Label
    this.tabEditProperties = new Tabulator("#divEditProperties", {
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      placeholder: "No Properties Found",
      headerVisible: false,
      dataTree: true,
      dataTreeChildField: "OPTIONS",
      groupBy: 'GROUP',
      dataTreeCollapseElement: '<div class="tab-arrow-down"></div>',
      dataTreeExpandElement: '<div class="tab-arrow-right"></div>',
      dataTreeBranchElement: false,
      dataTreeChildIndent: 54,
      dataTreeStartExpanded: true,
      columns: [
        { title: "ID", field: "ID", width: 50, visible: false },
        { title: "Group", field: "GROUP", width: 50, visible: false },
        { title: "Property", field: "PROPERTY", visible: true, resizable: false },
        { title: "Options", field: "OPTIONS", visible: false },
        { title: "Editor", field: "EDITOR", visible: false },
        { title: "List", field: "LIST", visible: false },
        { title: "Values", field: "VALUE", width: 200, resizable: false, visible: true,
            editor: EditProperties
        }
      ]
    });

    // Do this whenever we click on a row
    this.tabEditProperties.on("rowClick", function(e,row){
      row.select();
    });

    // This is used to drag around the label name editor form
    function draggableListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    }
    window.draggableListener = draggableListener

    interact('.draggable')
      .draggable({
        listeners: { move: window.draggableListener },
        inertia: true,
      })


    // Can copy samples but not edit them
    var sampleDatasets = [
      {"ID": "{A35F371D-23DE-496F-ADFD-CA7FC9CAE7BC}", "GROUP":"Sample Datasets", "DATASET":"Addresses", "LOCK":true },
      {"ID": "{712D76A9-DD2F-4A10-B312-A3BCF8C9EBD9}", "GROUP":"Sample Datasets", "DATASET":"Products", "LOCK":true },
      {"ID": "{D8079D98-D61B-4C7A-9866-DDD8B52BEDE1}", "GROUP":"Sample Datasets", "DATASET":"Locations", "LOCK":true },
      {"ID": "{62887781-89A3-4A8D-8C34-0A96D6F67406}", "GROUP":"Sample Datasets", "DATASET":"People", "LOCK":true }
    ];

    // DatasetList Tabulator - the list of datsets
    this.tabDatasetList = new Tabulator("#divDatasetList", {
      data: sampleDatasets,
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      groupBy: "GROUP",
      columnCalcs: "table",
      headerVisible: false,
      initialSort: [
        {column: "DATASET", dir: "asc"},
        {column:"GROUP", dir: "asc"}
      ],
      columns: [
        { title: "ID", field: "ID", width: 50, visible: false },
        { title: "Group", field: "GROUP", visible: false, sorter: "string" },
        { title: "Dataset", field: "DATASET", bottomCalc: "count", headerSort: false, sorter: "string" },
        { title: "Locked", field: "LOCK", visible: false },
      ]
    });

    // Want to select the first sample as the default label
    this.tabDatasetList.on("tableBuilt", function(){
      var row = this.getRow("{A35F371D-23DE-496F-ADFD-CA7FC9CAE7BC}");
      row.select()
      var datasetID = row.getCell("ID").getValue();
      var datasetName = row.getCell("DATASET").getValue();
      var groupName = row.getCell("GROUP").getValue();
      var locked = row.getCell("LOCK").getValue();
      pas.Unit1.Form1.NewDatasetSelected(datasetID, datasetName, groupName, locked);
    });

    // Do this whenever we click on a row
    this.tabDatasetList.on("rowClick", function(e,row){
      row.select();
      var datasetID = row.getCell("ID").getValue();
      var datasetName = row.getCell("DATASET").getValue();
      var groupName = row.getCell("GROUP").getValue();
      var locked = row.getCell("LOCK").getValue();
      pas.Unit1.Form1.NewDatasetSelected(datasetID, datasetName, groupName, locked);

      if (datasetName == "Addresses") {
        pas.Unit1.Form1.tabDataset.clearData();
        pas.Unit1.Form1.tabDataset.setData(sampleAddresses);
      } else if (datasetName == "Products") {
        pas.Unit1.Form1.tabDataset.clearData();
        pas.Unit1.Form1.tabDataset.setData(sampleProducts);
      } else if (datasetName == "Locations") {
        pas.Unit1.Form1.tabDataset.clearData();
        pas.Unit1.Form1.tabDataset.setData(sampleLocations);
      } else if (datasetName == "People") {
        pas.Unit1.Form1.tabDataset.clearData();
        pas.Unit1.Form1.tabDataset.setData(samplePeople);
      }

    });


    var sampleAddresses = [
      { "ADDRESS1":"123 Main Street",
        "ADDRESS2":"Unit # 456",
        "CITY":"Anytown",
        "PROVSTATE":"British Columbia",
        "COUNTRY":"Canada" },
      { "ADDRESS1":"789 Water Street",
        "CITY":"Elsewhere",
        "PROVSTATE":"Nunavut",
        "COUNTRY":"Canada" },
      { "ADDRESS1":"456 Main Street",
        "CITY":"Nowhere",
        "PROVSTATE":"Alberta",
        "COUNTRY":"Canada" }
    ];

    var sampleProducts = [
      { "Product#":"123-456-A",
        "Long Name":"microSD 8B",
        "Short Name":"m8",
        "Category 1":"Memory",
        "Category 2":"microSD",
        "Manufacturer":"SanDisk",
        "Cases":"12" },
      { "Product#":"123-456-A",
        "Long Name":"microSD 16GB",
        "Short Name":"m16",
        "Category 1":"Memory",
        "Category 2":"microSD",
        "Manufacturer":"SanDisk",
        "Cases":"414" },
      { "Product#":"123-456-A",
        "Long Name":"microSD 32GB",
        "Short Name":"m32",
        "Category 1":"Memory",
        "Category 2":"microSD",
        "Manufacturer":"SanDisk",
        "Cases":"30" },
      { "Product#":"123-456-A",
        "Long Name":"microSD 64GB",
        "Short Name":"m64",
        "Category 1":"Memory",
        "Category 2":"microSD",
        "Manufacturer":"SanDisk",
        "Cases":"-1" }
    ];

    var sampleLocations = [
      { "Bin":"01" },
      { "Bin":"02" },
      { "Bin":"03" },
      { "Bin":"04" },
      { "Bin":"05" },
      { "Bin":"06" },
      { "Bin":"07" },
      { "Bin":"08" },
      { "Bin":"09" },
      { "Bin":"10" },
      { "Bin":"11" },
      { "Bin":"12" },
      { "Bin":"13" },
      { "Bin":"14" },
      { "Bin":"15" },
      { "Bin":"16" },
      { "Bin":"17" },
      { "Bin":"18" },
      { "Bin":"19" },
      { "Bin":"20" }
    ];

    var samplePeople = [
      { "FIRST":"Sneezy",  "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Dopey",   "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Happy",   "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Bashful", "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Doc",     "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Grumpy",  "LAST":"Dwarf", "ROLE":"Minion" },
      { "FIRST":"Dopey",   "LAST":"Dwarf", "ROLE":"Minion" }
    ];

    // DatasetList Tabulator - the list of datsets
    this.tabDataset = new Tabulator("#divDataset", {
      data:samplePeople,
      layout: "fitColumns",
      selectable: 1,
      autoColumns: true
    });

    // Do this whenever we click on a row
    this.tabDataset.on("rowClick", function(e,row){
      row.select();
    });

  end;


end;

end.
