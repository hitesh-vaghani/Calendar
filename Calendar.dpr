program Calendar;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  BaseCalenderForm in 'BaseCalenderForm.pas' {frmBaseCalender},
  CustomCalenderForm in 'CustomCalenderForm.pas' {frmCustomCalender};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
