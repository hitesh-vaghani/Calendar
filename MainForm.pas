unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnCaleDis: TButton;
    btnCaleDisBackColor: TButton;
    procedure btnCaleDisClick(Sender: TObject);
    procedure btnCaleDisBackColorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

Uses BaseCalenderForm, CustomCalenderForm;

{$R *.dfm}

procedure TfrmMain.btnCaleDisClick(Sender: TObject);
var
  frmBaseCalender: TfrmBaseCalender;
begin
  frmBaseCalender := TfrmBaseCalender.Create(Self);
  try
    frmBaseCalender.ShowModal;
  finally
    FreeAndNil(frmBaseCalender);
  end;
end;

procedure TfrmMain.btnCaleDisBackColorClick(Sender: TObject);
var
  frmCustomCalender: TfrmCustomCalender;
begin
  frmCustomCalender := TfrmCustomCalender.Create(Self);
  try
    frmCustomCalender.ShowModal;
  finally
    FreeAndNil(frmCustomCalender);
  end;
end;

end.
