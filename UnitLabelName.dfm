object LabelNameForm: TLabelNameForm
  Width = 600
  Height = 206
  Caption = 'Label Name'
  Color = clNone
  CSSLibrary = cssBootstrap
  ElementClassName = 'border-0 draggable'
  ElementFont = efCSS
  Shadow = False
  OnKeyDown = WebFormKeyDown
  OnShow = WebFormShow
  object divDialog: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 600
    Height = 206
    ElementClassName = 'overflow-hidden rounded border border-3 border-success bg-dark'
    ElementID = 'divDialog'
    Align = alClient
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    ExplicitHeight = 204
    object Title: TWebLabel
      Left = 0
      Top = 0
      Width = 600
      Height = 40
      Cursor = crSizeAll
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label Name'
      ChildOrder = 1
      Color = clOlive
      ElementClassName = 'border-bottom border-4 border-success'
      ElementLabelClassName = 'bg-success text-white fs-6'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      Layout = tlCenter
      Transparent = False
      WidthPercent = 100.000000000000000000
      ExplicitWidth = 647
    end
    object WebLabel1: TWebLabel
      AlignWithMargins = True
      Left = 10
      Top = 45
      Width = 585
      Height = 21
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Caption = 'Please select a new Group and Label Name.'
      ElementLabelClassName = 'text-white'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      Layout = tlCenter
      WidthPercent = 100.000000000000000000
      ExplicitWidth = 209
      ExplicitHeight = 13
    end
    object divFormLabelGroup: TWebHTMLDiv
      AlignWithMargins = True
      Left = 5
      Top = 71
      Width = 590
      Height = 42
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      ElementClassName = 'rounded border border-1 border-secondary bg-dark'
      ElementID = 'divFormLabelGroup'
      Align = alBottom
      ChildOrder = 2
      ElementFont = efCSS
      Role = ''
      ExplicitTop = 69
      object labelGroup: TWebLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 80
        Height = 36
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        ElementClassName = 'text-white bg-secondary rounded-1'
        ElementID = 'labelGroup'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        HTML = '<div style="font-size: 12px;"  class="px-2">Group Name</div>'
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
        ExplicitHeight = 35
      end
      object cmbGroupName: TWebComboBox
        AlignWithMargins = True
        Left = 86
        Top = 3
        Width = 501
        Height = 21
        Margins.Left = 0
        Align = alClient
        ElementClassName = 'rounded-1 border-0 ps-2'
        ElementID = 'cmbGroupName'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        Style = csDropDown
        TextHint = 'Select Group'
        WidthPercent = 100.000000000000000000
        OnChange = edtLabelNameChange
        OnKeyDown = WebFormKeyDown
        ItemIndex = -1
        Items.Strings = (
          'a'
          'b'
          'c'
          'd')
      end
    end
    object divFormLabelName: TWebHTMLDiv
      AlignWithMargins = True
      Left = 5
      Top = 118
      Width = 590
      Height = 42
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ElementClassName = 'rounded border border-1 border-secondary bg-dark'
      ElementID = 'divFormLabelName'
      Align = alBottom
      ChildOrder = 3
      ElementFont = efCSS
      Role = ''
      ExplicitTop = 116
      object labelName: TWebLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 80
        Height = 36
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'Label Name'
        ElementClassName = 'text-white bg-secondary rounded-1'
        ElementID = 'labelName'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        HTML = '<div style="font-size: 12px;"  class="px-2">Label Name</div>'
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
        ExplicitHeight = 35
      end
      object edtLabelName: TWebEdit
        AlignWithMargins = True
        Left = 86
        Top = 3
        Width = 501
        Height = 36
        Margins.Left = 0
        Align = alClient
        ChildOrder = 1
        ElementClassName = 'ps-2 rounded-1  border-0'
        ElementID = 'edtLabelName'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        Text = 'edtLabelName'
        TextHint = 'Enter a Label Name'
        WidthPercent = 100.000000000000000000
        OnChange = edtLabelNameChange
        OnKeyDown = WebFormKeyDown
        ExplicitHeight = 35
      end
    end
    object WebHTMLDiv3: TWebHTMLDiv
      Left = 0
      Top = 165
      Width = 600
      Height = 41
      Align = alBottom
      ChildOrder = 4
      ElementFont = efCSS
      Role = ''
      ExplicitTop = 163
      object labelFormError: TWebLabel
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 380
        Height = 38
        Margins.Left = 10
        Margins.Top = 0
        Align = alClient
        AutoSize = False
        Caption = 'This is an error message'
        ElementLabelClassName = 'text-warning fst-italic'
        ElementID = 'labelFormError'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
        ExplicitLeft = 104
        ExplicitTop = 24
        ExplicitWidth = 53
        ExplicitHeight = 13
      end
      object btnFormCancel: TWebButton
        AlignWithMargins = True
        Left = 499
        Top = 0
        Width = 96
        Height = 36
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = 
          '<i style="color: #f99;" class="fa-solid fa-times pe-1 fa-lg"></i' +
          '> Cancel'
        ChildOrder = 2
        ElementClassName = 'btn btn-danger'
        ElementID = 'btnFormCancel'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        TabOrder = 1
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnFormCancelClick
      end
      object btnFormOK: TWebButton
        AlignWithMargins = True
        Left = 398
        Top = 0
        Width = 96
        Height = 36
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alRight
        Caption = 
          '<i style="color:yellow;" class="fa-solid fa-check pe-1 fa-lg"></' +
          'i> OK'
        ChildOrder = 1
        Default = True
        ElementClassName = 'btn btn-success'
        ElementID = 'btnFormOK'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnFormOKClick
      end
    end
    object btnFormClose: TWebButton
      Left = 566
      Top = 0
      Width = 26
      Height = 26
      Caption = '<i class="fa-solid fa-xmark"></i>'
      ElementClassName = 'btn btn-success btn-sm m-0 p-0'
      ElementID = 'btnFormClose'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnFormCloseClick
    end
  end
end
