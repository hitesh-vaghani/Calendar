inherited frmCustomCalender: TfrmCustomCalender
  Caption = 'frmCustomCalender'
  ClientHeight = 301
  ExplicitHeight = 357
  TextHeight = 28
  inherited lblCurrentDate: TLabel
    Visible = False
  end
  inherited cxGrid: TcxGrid
    inherited cxGridView: TcxGridDBTableView
      inherited cxGridViewSun: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewSunCustomDrawCell
      end
      inherited cxGridViewMon: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewMonCustomDrawCell
      end
      inherited cxGridViewTue: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewTueCustomDrawCell
      end
      inherited cxGridViewWed: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewWedCustomDrawCell
      end
      inherited cxGridViewThu: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewThuCustomDrawCell
      end
      inherited cxGridViewFri: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewFriCustomDrawCell
      end
      inherited cxGridViewSat: TcxGridDBColumn
        OnCustomDrawCell = cxGridViewSatCustomDrawCell
      end
    end
  end
  inherited btnPreviousMonth: TButton
    Visible = False
  end
  inherited btnNextMonth: TButton
    Visible = False
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
