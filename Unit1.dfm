object Form1: TForm1
  Width = 1023
  Height = 769
  object WebHTMLDiv1: TWebHTMLDiv
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 100
    Height = 763
    ElementClassName = 'rounded border border-secondary bg-dark'
    ElementID = 'divLabelsList'
    Align = alLeft
    ElementFont = efCSS
    Role = ''
    ExplicitLeft = 152
    ExplicitTop = 480
    ExplicitHeight = 41
  end
  object WebHTMLDiv2: TWebHTMLDiv
    AlignWithMargins = True
    Left = 114
    Top = 3
    Width = 906
    Height = 763
    ElementClassName = 'rounded border border-secondary bg-dark'
    ElementID = 'divMain'
    Align = alClient
    ChildOrder = 1
    Role = ''
    ExplicitLeft = 536
    ExplicitTop = 440
    ExplicitWidth = 100
    ExplicitHeight = 41
  end
  object WebSplitter1: TWebSplitter
    AlignWithMargins = True
    Left = 106
    Top = 25
    Width = 5
    Height = 719
    Margins.Left = 0
    Margins.Top = 25
    Margins.Right = 0
    Margins.Bottom = 25
    ElementID = 'splitterMain'
    Align = alLeft
    ChildOrder = 2
    Color = clSilver
    GripColor = clSilver
    ExplicitLeft = 100
    ExplicitTop = 0
    ExplicitHeight = 769
  end
end
