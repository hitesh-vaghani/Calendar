object frmBaseCalender: TfrmBaseCalender
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #12459#12524#12531#12480#12540
  ClientHeight = 373
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 28
  object lblCurrentDate: TLabel
    Left = 174
    Top = 7
    Width = 140
    Height = 28
    Caption = 'lblCurrentDate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid: TcxGrid
    Left = 40
    Top = 41
    Width = 460
    Height = 218
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxGridView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = srcDaysData
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object cxGridViewSun: TcxGridDBColumn
        Caption = #26085
        DataBinding.FieldName = 'Sun'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Styles.Content = cxStyleSun
        Styles.Header = cxStyleSun
        Width = 65
      end
      object cxGridViewMon: TcxGridDBColumn
        Caption = #26376
        DataBinding.FieldName = 'Mon'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridViewTue: TcxGridDBColumn
        Caption = #28779
        DataBinding.FieldName = 'Tue'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridViewWed: TcxGridDBColumn
        Caption = #27700
        DataBinding.FieldName = 'Wed'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridViewThu: TcxGridDBColumn
        Caption = #26408
        DataBinding.FieldName = 'Thu'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridViewFri: TcxGridDBColumn
        Caption = #37329
        DataBinding.FieldName = 'Fri'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridViewSat: TcxGridDBColumn
        Caption = #22303
        DataBinding.FieldName = 'Sat'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ExpressionEditing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Styles.Content = cxStyleSat
        Styles.Header = cxStyleSat
        Width = 65
      end
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridView
    end
  end
  object btnPreviousMonth: TButton
    Left = 39
    Top = 281
    Width = 150
    Height = 49
    Caption = #21069#26376
    TabOrder = 1
    OnClick = btnPreviousMonthClick
  end
  object btnNextMonth: TButton
    Left = 347
    Top = 281
    Width = 150
    Height = 49
    Caption = #32716#26376
    TabOrder = 2
    OnClick = btnNextMonthClick
  end
  object tblDaysData: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 41
    Top = 65532
    object tblDaysDataSun: TStringField
      FieldName = 'Sun'
      Size = 4
    end
    object tblDaysDataMon: TStringField
      FieldName = 'Mon'
      Size = 4
    end
    object tblDaysDataTue: TStringField
      FieldName = 'Tue'
      Size = 4
    end
    object tblDaysDataWed: TStringField
      FieldName = 'Wed'
      Size = 4
    end
    object tblDaysDataThu: TStringField
      FieldName = 'Thu'
      Size = 4
    end
    object tblDaysDataFri: TStringField
      FieldName = 'Fri'
      Size = 4
    end
    object tblDaysDataSat: TStringField
      FieldName = 'Sat'
      Size = 4
    end
  end
  object srcDaysData: TDataSource
    DataSet = tblDaysData
    Left = 78
    Top = 65532
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 243
    Top = 283
    PixelsPerInch = 96
    object cxStyleSun: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyleSat: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
  end
end
