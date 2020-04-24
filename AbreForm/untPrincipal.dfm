object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 371
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    767
    371)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 751
    Height = 185
    Anchors = [akLeft, akTop, akRight]
    DragCursor = crHandPoint
    TabOrder = 0
    object cxGrid1DBCardView1: TcxGridDBCardView
      OnMouseUp = cxGrid1DBCardView1MouseUp
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMenu
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.FocusRect = False
      OptionsView.CardBorderWidth = 1
      OptionsView.CardIndent = 7
      RowLayout = rlVertical
      Styles.Background = cxStyleGrid
      Styles.CardBorder = cxStyleGrid
      object cxGrid1DBCardView1codigo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'codigo'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Visible = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1descricao: TcxGridDBCardViewRow
        DataBinding.FieldName = 'descricao'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Options.ShowCaption = False
        Position.BeginsLayer = False
        Styles.Content = cxStyleGrid
      end
      object cxGrid1DBCardView1imagem: TcxGridDBCardViewRow
        DataBinding.FieldName = 'imagem'
        PropertiesClassName = 'TcxImageProperties'
        Properties.FitMode = ifmStretch
        Properties.GraphicClassName = 'TJPEGImage'
        Options.ShowCaption = False
        Position.BeginsLayer = False
        Position.LineCount = 8
      end
      object cxGrid1DBCardView1formulario: TcxGridDBCardViewRow
        DataBinding.FieldName = 'formulario'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Visible = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
    end
  end
  object dsMenu: TDataSource
    DataSet = cdsMenu
    Left = 448
    Top = 192
  end
  object cdsMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 192
    object cdsMenuCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMenuDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsMenuIMAGEM: TBlobField
      FieldName = 'IMAGEM'
    end
    object cdsMenuFORMULARIO: TStringField
      FieldName = 'FORMULARIO'
      Size = 50
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 8
    PixelsPerInch = 96
    object cxStyleGrid: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMenuHighlight
    end
  end
end
