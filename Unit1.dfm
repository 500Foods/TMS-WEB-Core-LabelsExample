object Form1: TForm1
  Width = 1161
  Height = 666
  Caption = 'LabelsExample'
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  OnCreate = WebFormCreate
  object divLabelsList: TWebHTMLDiv
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 300
    Height = 656
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 4
    Margins.Bottom = 5
    ElementClassName = 'rounded border overflow-hidden border-secondary bg-dark'
    ElementID = 'divLabelsList'
    Align = alLeft
    ElementFont = efCSS
    HTML.Strings = (
      '<div style="font-size:16px;">'
      '  <span style="color: white">&lt;No Label Selected&gt;</span>'
      '</div>')
    Role = ''
    object TMSFNCBitmapContainer1: TTMSFNCBitmapContainer
      Left = 72
      Top = 440
      Width = 26
      Height = 26
      Visible = True
      Items = <>
    end
  end
  object divMain: TWebHTMLDiv
    AlignWithMargins = True
    Left = 318
    Top = 5
    Width = 838
    Height = 656
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ElementID = 'divMain'
    Align = alClient
    ChildOrder = 1
    ElementFont = efCSS
    Role = ''
    object divTop: TWebHTMLDiv
      Left = 0
      Top = 0
      Width = 838
      Height = 40
      ElementID = 'divTop'
      Align = alTop
      ChildOrder = 1
      Role = ''
      object divButtonHolder: TWebPanel
        Left = 0
        Top = 0
        Width = 529
        Height = 40
        ElementClassName = 'border border-0 bg-none'
        ElementID = 'divButtonHolder'
        Align = alLeft
        BorderColor = clNone
        Color = clWindow
        ElementBodyClassName = 'btn btn-group'
        ElementFont = efCSS
        object btnPagePrint: TWebButton
          Left = 0
          Top = 0
          Width = 96
          Height = 40
          Align = alLeft
          Caption = '<i class="fa-solid fa-print pe-1"></i> Print Labels'
          ElementClassName = 'btn btn-primary px-3'
          ElementID = 'btnPagePrint'
          ElementFont = efCSS
          ElementPosition = epIgnore
          HeightPercent = 100.000000000000000000
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnClick = btnPagePrintClick
        end
        object btnPageEdit: TWebButton
          Left = 96
          Top = 0
          Width = 96
          Height = 40
          Align = alLeft
          Caption = '<i class="fa-solid fa-pencil pe-1"></i> Edit Labels'
          ChildOrder = 1
          ElementClassName = 'btn  btn-secondary px-3'
          ElementID = 'btnPageEdit'
          ElementFont = efCSS
          ElementPosition = epIgnore
          HeightPercent = 100.000000000000000000
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnClick = btnPageEditClick
        end
        object btnPageData: TWebButton
          Left = 192
          Top = 0
          Width = 96
          Height = 40
          Align = alLeft
          Caption = '<i class="fa-solid fa-table pe-1"></i> Label Data'
          ChildOrder = 2
          ElementClassName = 'btn btn-secondary px-3'
          ElementID = 'btnPageEdit'
          ElementFont = efCSS
          ElementPosition = epIgnore
          HeightPercent = 100.000000000000000000
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnClick = btnPageDataClick
        end
      end
    end
    object pageControl: TWebPageControl
      AlignWithMargins = True
      Left = 1
      Top = 45
      Width = 837
      Height = 610
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 1
      ElementID = 'pageControl'
      Align = alClient
      ChildOrder = 1
      ElementFont = efCSS
      TabIndex = 0
      ShowTabs = False
      TabOrder = 1
      object pagePrint: TWebTabSheet
        Left = 0
        Top = 20
        Width = 837
        Height = 590
        ElementClassName = 'rounded border border-secondary bg-dark overflow-visible'
        ElementID = 'pagePrint'
        Align = alClient
        Caption = 'Print'
        ElementFont = efCSS
        ShowCaption = False
        TabVisible = False
        object divPrintButtonsHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 827
          Height = 42
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ElementClassName = 'rounded border border-secondary'
          ElementID = 'divPrintButtonsHolder'
          Align = alTop
          ElementFont = efCSS
          Role = ''
          object labelPrintLabel: TWebLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 220
            Height = 36
            Align = alLeft
            AutoSize = False
            ElementClassName = 'text-white bg-secondary rounded-1'
            ElementID = 'labelPrintLabel'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTML = '<div style="font-size: 13px;" class="px-2">Selected Label</div>'
            Layout = tlCenter
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitHeight = 13
          end
          object labelPrint: TWebLabel
            AlignWithMargins = True
            Left = 229
            Top = 3
            Width = 329
            Height = 36
            Align = alClient
            ChildOrder = 1
            ElementLabelClassName = 'pt-1 px-2'
            ElementID = 'labelPrint'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object btnPrintDelete: TWebButton
            AlignWithMargins = True
            Left = 773
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Margins.Right = 4
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-trash-can pe-1"></i> Delete Label</span>'
            ChildOrder = 6
            ElementClassName = 'btn btn-sm btn-danger'
            ElementID = 'btnPrintDelete'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintDeleteClick
          end
          object btnPrintRename: TWebButton
            AlignWithMargins = True
            Left = 561
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-pencil pe-1"></i> Rename Label</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnPrintRename'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintRenameClick
          end
          object btnPrintClone: TWebButton
            AlignWithMargins = True
            Left = 614
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-clone pe-1"></i> Clone</span>'
            ChildOrder = 3
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnPrintClone'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintCloneClick
          end
          object btnPrintExport: TWebButton
            AlignWithMargins = True
            Left = 667
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-download pe-1"></i> Export</span>'
            ChildOrder = 4
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnPrintExport'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnPrintImport: TWebButton
            AlignWithMargins = True
            Left = 720
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-upload pe-1"></i> Import</span>'
            ChildOrder = 5
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnPrintImport'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
        end
        object divPrintingButtonsHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 5
          Top = 543
          Width = 827
          Height = 42
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ElementClassName = 
            'overflow-hidden rounded border border-secondary d-flex justify-c' +
            'ontent-center align-items-center'
          ElementID = 'divPrintingButtonsHolder'
          Align = alBottom
          ChildOrder = 4
          Role = ''
          object TMSFNCWXPDFToolbar1: TTMSFNCWXPDFToolbar
            Left = 0
            Top = 0
            Width = 356
            Height = 42
            Align = alLeft
            BevelEdges = []
            BevelInner = bvNone
            BevelOuter = bvNone
            ParentDoubleBuffered = False
            Color = clNone
            DoubleBuffered = True
            TabOrder = 2
            Appearance.ItemWidth = 35.000000000000000000
            Appearance.Stroke.Color = clBlack
            Appearance.StrokeHover.Color = 10061943
            Appearance.FillHover.Color = 13419707
            Appearance.StrokeDown.Color = 9470064
            Appearance.FillDown.Color = 13156536
            Appearance.StrokeSelected.Color = 5197615
            Appearance.FillSelected.Color = 13156536
            Appearance.StrokeDisabled.Color = 11119017
            Appearance.FillDisabled.Color = clSilver
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clWindowText
            Appearance.Font.Height = -11
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = []
            Items = <
              item
                Visible = False
              end
              item
                Enabled = False
                PDFRole = trFirstPage
              end
              item
                Enabled = False
                PDFRole = trPreviousPage
              end
              item
                Enabled = False
                PDFRole = trNextPage
              end
              item
                Enabled = False
                PDFRole = trLastPage
              end
              item
                PDFRole = trZoomOut
              end
              item
                PDFRole = trZoomIn
              end
              item
                PDFRole = trRotateLeft
              end
              item
                PDFRole = trRotateRight
              end>
            Viewer = TMSFNCWXPDFViewer1
          end
          object btnPrintPDF: TWebButton
            AlignWithMargins = True
            Left = 392
            Top = 3
            Width = 96
            Height = 34
            Margins.Left = 0
            Margins.Right = 2
            Caption = 
              '<span class="px-2 mx-2" style="font-size:13px;"><i class="fa-sol' +
              'id fa-print pe-1"></i>Print PDF</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-primary  me-1'
            ElementID = 'btnPrintPDF'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintPDFClick
          end
          object btnDownloadPDF: TWebButton
            AlignWithMargins = True
            Left = 593
            Top = 3
            Width = 96
            Height = 34
            Margins.Left = 2
            Caption = 
              '<span class="px-2 mx-2" style="font-size:13px;"><i class="fa-sol' +
              'id fa-download pe-1"></i>Download PDF</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnDownloadPDF'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDownloadPDFClick
          end
          object btnUploadPDF: TWebButton
            AlignWithMargins = True
            Left = 492
            Top = 3
            Width = 96
            Height = 34
            Margins.Left = 2
            Caption = 
              '<span class="px-2 mx-2" style="font-size:13px;"><i class="fa-sol' +
              'id fa-upload pe-1"></i>Upload PDF</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success me-1'
            ElementID = 'btnUploadPDF'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnUploadPDFClick
          end
        end
        object divPrintHolder: TWebHTMLDiv
          Left = 0
          Top = 52
          Width = 837
          Height = 486
          ElementID = 'divPrintHolder'
          Align = alClient
          ChildOrder = 5
          Role = ''
          object divPrintOptionsHolder: TWebHTMLDiv
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 827
            Height = 200
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 4
            ElementClassName = 'rounded border border-secondary'
            ElementID = 'divPrintOptionsHolder'
            Align = alTop
            ChildOrder = 1
            ElementFont = efCSS
            Role = ''
            object btnGenerateLabelPDF: TWebButton
              Left = 3
              Top = 3
              Width = 96
              Height = 35
              Caption = 'Generate Labels'
              ElementClassName = 'btn btn-primary btn-sm'
              ElementID = 'btnGenerateLabelPDF'
              ElementFont = efCSS
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnGenerateLabelPDFClick
            end
            object divTest: TWebHTMLDiv
              Left = 280
              Top = 10
              Width = 432
              Height = 145
              ElementID = 'divTest'
              ChildOrder = 1
              ElementFont = efCSS
              Role = ''
            end
          end
          object splitterPrint: TWebSplitter
            AlignWithMargins = True
            Left = 75
            Top = 204
            Width = 687
            Height = 6
            Cursor = crVSplit
            Margins.Left = 75
            Margins.Top = 0
            Margins.Right = 75
            Margins.Bottom = 0
            ElementClassName = 'rounded'
            ElementID = 'splitterPrint'
            Align = alTop
            ChildOrder = 2
            Color = clGray
            GripColor = clGray
          end
          object divPrintPreviewHolder: TWebHTMLDiv
            AlignWithMargins = True
            Left = 5
            Top = 214
            Width = 827
            Height = 272
            Margins.Left = 5
            Margins.Top = 4
            Margins.Right = 5
            Margins.Bottom = 0
            ElementClassName = 'overflow-hidden rounded border border-secondary'
            ElementID = 'divPrintPreviewHolder'
            Align = alClient
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            object TMSFNCWXPDFViewer1: TTMSFNCWXPDFViewer
              Left = 200
              Top = 0
              Width = 627
              Height = 272
              Align = alClient
              ParentDoubleBuffered = False
              DoubleBuffered = True
              TabOrder = 0
              CalculateThumbnails = True
              Zoom = 1.000000000000000000
              ThumbnailSize = 150
            end
            object TMSFNCWXPDFThumbnailList1: TTMSFNCWXPDFThumbnailList
              Left = 0
              Top = 0
              Width = 200
              Height = 272
              Align = alLeft
              ParentDoubleBuffered = False
              DoubleBuffered = True
              TabOrder = 1
              Appearance.Stroke.Color = 11119017
              Appearance.StrokeHover.Color = 10061943
              Appearance.FillHover.Color = 13419707
              Appearance.StrokeDown.Color = 9470064
              Appearance.FillDown.Color = 13156536
              Appearance.StrokeSelected.Color = 5197615
              Appearance.FillSelected.Color = 13156536
              Appearance.StrokeDisabled.Color = 11119017
              Appearance.FillDisabled.Color = clSilver
              Appearance.Font.Charset = DEFAULT_CHARSET
              Appearance.Font.Color = clWindowText
              Appearance.Font.Height = -11
              Appearance.Font.Name = 'Tahoma'
              Appearance.Font.Style = []
              Appearance.TextFormat = 'Page %d'
              Viewer = TMSFNCWXPDFViewer1
            end
          end
        end
      end
      object pageEdit: TWebTabSheet
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 837
        Height = 590
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        ElementClassName = 'rounded border border-secondary bg-dark'
        ElementID = 'pageEdit'
        Caption = 'Edit'
        ChildOrder = 1
        ElementFont = efCSS
        object divEditButtonsHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 827
          Height = 42
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ElementClassName = 'rounded border border-secondary'
          ElementID = 'divEditButtonsHolder'
          Align = alTop
          ChildOrder = 3
          Role = ''
          object labelEdit: TWebLabel
            AlignWithMargins = True
            Left = 229
            Top = 3
            Width = 329
            Height = 36
            Align = alClient
            ChildOrder = 1
            ElementLabelClassName = 'pt-1 px-2'
            ElementID = 'labelEdit'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object labelEditLabel: TWebLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 220
            Height = 36
            Align = alLeft
            AutoSize = False
            ElementClassName = 'text-white bg-secondary rounded-1'
            ElementID = 'labelEditLabel'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTML = '<div style="font-size: 13px;" class="px-2">Selected Label</div>'
            Layout = tlCenter
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitLeft = 11
            ExplicitTop = 6
          end
          object btnEditRename: TWebButton
            AlignWithMargins = True
            Left = 561
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-pencil pe-1"></i> Rename Label</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnEditRename'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintRenameClick
          end
          object btnEditClone: TWebButton
            AlignWithMargins = True
            Left = 614
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-clone pe-1"></i> Clone</span>'
            ChildOrder = 3
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnEditClone'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPrintCloneClick
          end
          object btnEditExport: TWebButton
            AlignWithMargins = True
            Left = 667
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-download pe-1"></i> Export</span>'
            ChildOrder = 4
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnEditExport'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnEditDelete: TWebButton
            AlignWithMargins = True
            Left = 773
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Margins.Right = 4
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-trash-can pe-1"></i> Delete Label</span>'
            ChildOrder = 6
            ElementClassName = 'btn btn-sm btn-danger'
            ElementID = 'btnEditDelete'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnEditImport: TWebButton
            AlignWithMargins = True
            Left = 720
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-upload pe-1"></i> Import</span>'
            ChildOrder = 5
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnEditImport'
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
        end
        object divEditor: TWebHTMLDiv
          Left = 0
          Top = 99
          Width = 837
          Height = 491
          ElementID = 'divEditor'
          Align = alClient
          ChildOrder = 5
          ElementFont = efCSS
          Role = ''
          object divEditPropertiesHolder: TWebHTMLDiv
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 837
            Height = 224
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementID = 'divEditPropertiesHolder'
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            ChildOrder = 1
            ElementFont = efCSS
            Role = ''
            object divEditProperties: TWebHTMLDiv
              AlignWithMargins = True
              Left = 5
              Top = 0
              Width = 514
              Height = 220
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 4
              Margins.Bottom = 4
              ElementClassName = 'rounded border border-secondary overflow-hidden'
              ElementID = 'divEditProperties'
              Align = alLeft
              Anchors = [akLeft, akTop, akRight, akBottom]
              ElementFont = efCSS
              Role = ''
            end
            object divEditPropertiesDetail: TWebHTMLDiv
              AlignWithMargins = True
              Left = 532
              Top = 0
              Width = 300
              Height = 220
              Margins.Left = 4
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 4
              ElementClassName = 'rounded border border-secondary'
              ElementID = 'divEditPropertiesDetail'
              Align = alClient
              ChildOrder = 2
              ElementFont = efCSS
              Role = ''
            end
            object splitterProperties: TWebSplitter
              AlignWithMargins = True
              Left = 523
              Top = 25
              Width = 5
              Height = 174
              Cursor = crHSplit
              Margins.Left = 0
              Margins.Top = 25
              Margins.Right = 0
              Margins.Bottom = 25
              ElementClassName = 'rounded'
              ElementID = 'splitterProperties'
              Align = alLeft
              ChildOrder = 1
              Color = clGray
              GripColor = clGray
            end
          end
          object splitterEditor: TWebSplitter
            AlignWithMargins = True
            Left = 75
            Top = 224
            Width = 687
            Height = 6
            Cursor = crVSplit
            Margins.Left = 75
            Margins.Top = 0
            Margins.Right = 75
            Margins.Bottom = 0
            ElementClassName = 'rounded'
            ElementID = 'splitterEditor'
            Align = alTop
            ChildOrder = 2
            Color = clGray
            GripColor = clGray
            OnMove = splitterEditorMove
          end
          object divEditPreviewHolder: TWebHTMLDiv
            AlignWithMargins = True
            Left = 5
            Top = 234
            Width = 827
            Height = 252
            Margins.Left = 5
            Margins.Top = 4
            Margins.Right = 5
            Margins.Bottom = 5
            ElementClassName = 'overflow-hidden rounded border border-secondary'
            ElementID = 'divEditPreviewHolder'
            Align = alClient
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
          end
        end
        object divEditPropertyButtons: TWebHTMLDiv
          AlignWithMargins = True
          Left = 5
          Top = 52
          Width = 827
          Height = 42
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          ElementClassName = 'rounded border border-secondary'
          ElementID = 'divEditPropertyButtons'
          Align = alTop
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          object ddPropertiesListHolder: TWebDropDownControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 300
            Height = 36
            ElementClassName = 'ps-2 rounded-1 border border-0 bg-white overflow-hidden'
            ElementID = 'ddPropertiesListHolder'
            Align = alLeft
            AutoDropDown = True
            Color = clWhite
            Control = panelPropertiesList
            DropDownColor = 1193046
            DropDownHeight = 500
            DropDownShadow = False
            DropDownWidth = 300
            ElementInputClassName = 'ddPropertiesListInput'
            ElementFont = efCSS
            ParentColor = False
            TabOrder = 0
            Text = ''
            OnDropDown = ddPropertiesListHolderDropDown
          end
          object btnEditPropertiesAdd: TWebButton
            AlignWithMargins = True
            Left = 306
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alLeft
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-plus pe-1"></i> Add Property</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnEditPropertiesAdd'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnEditPropertiesAddClick
          end
          object panelPropertiesList: TWebPanel
            Left = 624
            Top = 10
            Width = 150
            Height = 31
            ElementClassName = 'border border-secondary bg-none w-100 h-100 m-0 p-0 rounded-1'
            ElementID = 'panelPropertiesList'
            BorderColor = clNone
            BorderStyle = bsNone
            Caption = 'panelPropertiesList'
            ChildOrder = 3
            Color = clWindow
            ElementBodyClassName = 'bg-none'
            ElementFont = efCSS
            Visible = False
          end
          object btnEditPropertiesDelete: TWebButton
            AlignWithMargins = True
            Left = 774
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-trash-can pe-1"></i> Delete Property</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-danger'
            ElementID = 'btnEditPropertiesDelete'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnEditPropertiesDeleteClick
          end
          object btnEditPreview: TWebButton
            AlignWithMargins = True
            Left = 359
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Align = alLeft
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-eye pe-1"></i> Preview Label</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-primary'
            ElementID = 'btnEditPreview'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnEditPreviewClick
          end
        end
      end
      object pageData: TWebTabSheet
        Left = 0
        Top = 20
        Width = 837
        Height = 590
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        ElementClassName = 'rounded border border-secondary bg-dark'
        ElementID = 'pageData'
        Caption = 'Data'
        ChildOrder = 2
        ElementFont = efCSS
        object divDatasetButtonsHolder: TWebHTMLDiv
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 827
          Height = 42
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ElementClassName = 'rounded border border-secondary'
          ElementID = 'divDatasetButtonsHolder'
          Align = alTop
          ElementFont = efCSS
          Role = ''
          object labelDatasetLabel: TWebLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 220
            Height = 36
            Align = alLeft
            AutoSize = False
            ElementClassName = 'text-white bg-secondary rounded-1'
            ElementID = 'labelDatasetLabel'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            HTML = 
              '<div style="font-size: 13px;" class="px-2">Selected Dataset</div' +
              '>'
            Layout = tlCenter
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitHeight = 13
          end
          object labelDataset: TWebLabel
            AlignWithMargins = True
            Left = 229
            Top = 3
            Width = 229
            Height = 36
            Align = alClient
            ChildOrder = 1
            ElementLabelClassName = 'pt-1 px-2'
            ElementID = 'labelDataset'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object btnDatasetDelete: TWebButton
            AlignWithMargins = True
            Left = 773
            Top = 3
            Width = 50
            Height = 36
            Margins.Left = 0
            Margins.Right = 4
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-trash-can pe-1"></i> Delete Dataset</span>'
            ChildOrder = 6
            ElementClassName = 'btn btn-sm btn-danger'
            ElementID = 'btnDatasetDelete'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabOrder = 5
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnDatasetExport: TWebButton
            AlignWithMargins = True
            Left = 637
            Top = 3
            Width = 70
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-download pe-1"></i> Export</span>'
            ChildOrder = 4
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnDatasetExport'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabOrder = 3
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnDatasetImport: TWebButton
            AlignWithMargins = True
            Left = 710
            Top = 3
            Width = 60
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-upload pe-1"></i> Import</span>'
            ChildOrder = 5
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnDatasetImport'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabOrder = 4
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnDatasetClone: TWebButton
            AlignWithMargins = True
            Left = 554
            Top = 3
            Width = 80
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-clone pe-1"></i> Clone</span>'
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnDatasetClone'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabOrder = 1
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object btnDatasetRename: TWebButton
            AlignWithMargins = True
            Left = 461
            Top = 3
            Width = 90
            Height = 36
            Margins.Left = 0
            Align = alRight
            Caption = 
              '<span class="px-2" style="font-size:13px;"><i class="fa-solid fa' +
              '-pencil pe-1"></i> Rename Dataset</span>'
            ChildOrder = 3
            ElementClassName = 'btn btn-sm btn-success'
            ElementID = 'btnDatasetRename'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabOrder = 2
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
        end
        object divDatasetsHolder: TWebHTMLDiv
          Left = 0
          Top = 52
          Width = 837
          Height = 538
          ElementID = 'divDatasetsHolder'
          Align = alClient
          ChildOrder = 1
          ElementFont = efCSS
          Role = ''
          object divDatasetList: TWebHTMLDiv
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 250
            Height = 533
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 4
            Margins.Bottom = 5
            ElementClassName = 'rounded border border-secondary overflow-hidden'
            ElementID = 'divDatasetList'
            Align = alLeft
            ElementFont = efCSS
            Role = ''
          end
          object divDataset: TWebHTMLDiv
            AlignWithMargins = True
            Left = 269
            Top = 0
            Width = 563
            Height = 533
            Margins.Left = 4
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            ElementClassName = 'rounded border border-secondary overflow-hidden'
            ElementID = 'divDataset'
            Align = alClient
            ChildOrder = 1
            ElementFont = efCSS
            Role = ''
          end
          object WebSplitter1: TWebSplitter
            AlignWithMargins = True
            Left = 259
            Top = 75
            Width = 6
            Height = 388
            Cursor = crHSplit
            Margins.Left = 0
            Margins.Top = 75
            Margins.Right = 0
            Margins.Bottom = 75
            ElementClassName = 'rounded'
            ElementID = 'splitterMain'
            Align = alLeft
            ChildOrder = 2
            Color = clGray
            GripColor = clGray
          end
        end
      end
    end
  end
  object splitterMain: TWebSplitter
    AlignWithMargins = True
    Left = 309
    Top = 75
    Width = 6
    Height = 516
    Cursor = crHSplit
    Margins.Left = 0
    Margins.Top = 75
    Margins.Right = 0
    Margins.Bottom = 75
    ElementClassName = 'rounded'
    ElementID = 'splitterMain'
    Align = alLeft
    ChildOrder = 2
    Color = clGray
    GripColor = clGray
  end
  object wxBarcode: TTMSFNCWXBarcode
    Left = 70
    Top = 24
    Width = 211
    Height = 249
    ParentDoubleBuffered = False
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    BarcodeBorder.Color = clNone
    BarcodeType = bciCode39
    IncludeText = False
    IncludeCheck = True
    Scale = 2
    Text = '12345'
    Settings.Code39HideStars = True
  end
  object WebOpenDialog1: TWebOpenDialog
    Accept = '.pdf'
    Left = 1044
    Top = 613
  end
end
