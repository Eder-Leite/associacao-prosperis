program update_;

uses
  Forms,
  update in 'update.pas' {updateFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Update';
  Application.CreateForm(TupdateFrm, updateFrm);
  Application.Run;
end.
