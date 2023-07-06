unit BaseCalenderForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, System.DateUtils,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxTextEdit;

type
  TfrmBaseCalender = class(TForm)
    tblDaysData: TFDMemTable;
    tblDaysDataSun: TStringField;
    tblDaysDataMon: TStringField;
    tblDaysDataTue: TStringField;
    tblDaysDataWed: TStringField;
    tblDaysDataThu: TStringField;
    tblDaysDataFri: TStringField;
    tblDaysDataSat: TStringField;
    srcDaysData: TDataSource;
    cxGridView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridViewSun: TcxGridDBColumn;
    cxGridViewMon: TcxGridDBColumn;
    cxGridViewTue: TcxGridDBColumn;
    cxGridViewWed: TcxGridDBColumn;
    cxGridViewThu: TcxGridDBColumn;
    cxGridViewFri: TcxGridDBColumn;
    cxGridViewSat: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleSun: TcxStyle;
    btnPreviousMonth: TButton;
    btnNextMonth: TButton;
    cxStyleSat: TcxStyle;
    lblCurrentDate: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNextMonthClick(Sender: TObject);
    procedure btnPreviousMonthClick(Sender: TObject);
  private
    { Private declarations }
    FDisplayYear: Word;
    FDisplayMonth: Word;
    procedure CreateCalendarDays(const AYear: Word; const AMonth: Word);
    procedure AddDaysRecordInDataSet(aDayList: TStringList);
    procedure SetFormCaption;
  public
    { Public declarations }
    Property DisplayYear: Word read FDisplayYear write FDisplayYear;
    Property DisplayMonth: Word read FDisplayMonth write FDisplayMonth;
  end;

implementation

{$R *.dfm}

procedure TfrmBaseCalender.AddDaysRecordInDataSet(aDayList: TStringList);
begin
  tblDaysData.Append;
  tblDaysDataSun.AsString := aDayList.Strings[0];
  tblDaysDataMon.AsString := aDayList.Strings[1];
  tblDaysDataTue.AsString := aDayList.Strings[2];
  tblDaysDataWed.AsString := aDayList.Strings[3];
  tblDaysDataThu.AsString := aDayList.Strings[4];
  tblDaysDataFri.AsString := aDayList.Strings[5];
  tblDaysDataSat.AsString := aDayList.Strings[6];
  tblDaysData.Post;
  aDayList.Clear;
end;

procedure TfrmBaseCalender.btnNextMonthClick(Sender: TObject);
begin
  if FDisplayMonth = 12 then
  begin
    FDisplayMonth := 1;
    FDisplayYear := FDisplayYear+1;
  end
  else
    FDisplayMonth := FDisplayMonth+1;
  CreateCalendarDays(FDisplayYear, FDisplayMonth);
end;

procedure TfrmBaseCalender.btnPreviousMonthClick(Sender: TObject);
begin
  if FDisplayMonth = 1 then
  begin
    FDisplayMonth := 12;
    FDisplayYear := FDisplayYear-1;
  end
  else
    FDisplayMonth := FDisplayMonth-1;
  CreateCalendarDays(FDisplayYear, FDisplayMonth);
end;

procedure TfrmBaseCalender.CreateCalendarDays(const AYear, AMonth: Word);
var
  currDate: TDate;
  y, m, d: Word;
  monthStartDay: Word;
  cntr: integer;
  daysOfMonth: Word;
  dayList: TStringList;
begin
  //delete all the old records in dataset
  tblDaysData.EmptyDataSet;
  //Set month first date
  currDate := EncodeDate(AYear, AMonth, 1);
  DecodeDate(currDate, y, m, d);
  //Set starting day of the month
  monthStartDay := DayOfTheWeek(EncodeDate(y, m, 1)) + 1;
  //If 1st Date start on Sunday on every month then we should make it CurrDay as 1
  if monthStartDay = 8 then
    monthStartDay := 1;
  //get month total record
  DaysOfmonth := DaysInMonth(currDate);
  //Use to store Sun to Sat Day value and insert record in Dataset
  dayList := TStringList.Create;
  try
    // If start day start with Wed then we should add blank value for Sun, Mon, and Tue
    for cntr := 1 to monthStartDay-1 do
      DayList.Add('');
    for cntr := monthStartDay to (DaysOfmonth + monthStartDay) - 1 do
    begin
      DayList.Add(format('%d', [cntr - (monthStartDay - 1)]));
      //Insert all seven days date in dataset
      if DayList.Count = 7 then
        AddDaysRecordInDataSet(DayList);
    end;
    if DayList.Count > 0 then
    begin
      for cntr := DayList.Count to 6 do
        DayList.Add('');
      //Insert all seven days date in dataset
      AddDaysRecordInDataSet(DayList);
    end;
    SetFormCaption;
  Finally
    FreeAndNil(DayList);
  end;
end;

procedure TfrmBaseCalender.FormCreate(Sender: TObject);
begin
  //Create Memory Dateset for store days in table for display in grid
  tblDaysData.CreateDataSet;
  tblDaysData.Open;
  //Set Current Date Year and Month
  FDisplayYear := YearOf(Now);
  FDisplayMonth := MonthOf(Now);
  //Calculate Month Days
  CreateCalendarDays(FDisplayYear, FDisplayMonth);
  //Set Current Date
  lblCurrentDate.Caption := 'Today: ' + DateToStr(Now);
end;

procedure TfrmBaseCalender.SetFormCaption;
var
  month: String;
begin
  month := IntToStr(FDisplayMonth);
  month := month.PadLeft(2, '0');
  //Form Caption display with Year and Month
  Self.Caption := 'カレンダー '+ IntToStr(FDisplayYear) + '/' + month;
end;

end.
