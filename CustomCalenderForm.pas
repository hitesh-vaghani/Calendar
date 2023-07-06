unit CustomCalenderForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseCalenderForm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  cxClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid;

type
  TfrmCustomCalender = class(TfrmBaseCalender)
    procedure cxGridViewSunCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewSatCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewThuCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewMonCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewTueCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewWedCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridViewFriCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure SetCurrentDateColor(ACanvas: TcxCanvas; const aDay: String);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmCustomCalender.cxGridViewFriCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  SetCurrentDateColor(ACanvas,
    AViewInfo.GridRecord.Values[cxGridViewFri.Index]);
end;

procedure TfrmCustomCalender.cxGridViewMonCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  SetCurrentDateColor(ACanvas,
    AViewInfo.GridRecord.Values[cxGridViewMon.Index]);
end;

procedure TfrmCustomCalender.cxGridViewSatCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  aDayValue: String;
begin
  inherited;
  //Set Background color on Sat Column
  aDayValue :=  AViewInfo.GridRecord.Values[cxGridViewSat.Index];
  if aDayValue <> '' then
  begin
    ACanvas.Brush.Color := clWebPaleTurquoise;
    SetCurrentDateColor(ACanvas, aDayValue);
  end;
end;

procedure TfrmCustomCalender.cxGridViewSunCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  aDayValue: String;
begin
  inherited;
  //Set Background color on Sun Column
  aDayValue :=  AViewInfo.GridRecord.Values[cxGridViewSun.Index];
  if aDayValue <> '' then
  begin
    ACanvas.Brush.Color := clWebLightPink;
    SetCurrentDateColor(ACanvas, aDayValue);
  end;
end;

procedure TfrmCustomCalender.cxGridViewThuCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  SetCurrentDateColor(ACanvas,
    AViewInfo.GridRecord.Values[cxGridViewThu.Index]);
end;

procedure TfrmCustomCalender.cxGridViewTueCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  SetCurrentDateColor(ACanvas,
    AViewInfo.GridRecord.Values[cxGridViewTue.Index]);
end;

procedure TfrmCustomCalender.cxGridViewWedCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  SetCurrentDateColor(ACanvas,
    AViewInfo.GridRecord.Values[cxGridViewWed.Index]);
end;

//Set current date color
procedure TfrmCustomCalender.SetCurrentDateColor(ACanvas: TcxCanvas;
  const aDay: String);
var
  year, month, day: Word;
begin
  if aDay <> '' then
  begin
    DecodeDate(now, year, month, day);
    if (year = DisplayYear) and (month=DisplayMonth)  then
    begin
    if aDay = IntToStr(day) then
      ACanvas.Brush.Color := clWebSpringGreen;
    end;
  end;
end;

end.
