unit update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Inifiles, ComCtrls, ExtCtrls, IWSystem;

type
  TupdateFrm = class(TForm)
    pb: TProgressBar;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure pUpdate;
    { Public declarations }
  end;

var
  updateFrm: TupdateFrm;

implementation

{$R *.dfm}

{ TForm1 }

procedure TupdateFrm.pUpdate;

  procedure abrirArquivo(fname: string);
  begin
    WinExec(PAnsiChar(AnsiString('cmd /c' + fname)), SW_HIDE);
  end;

var
  vExeAntigo, vExeNovo: TDateTime;
  vConfigini: TIniFile;
  vExecutavel, vAtualizacao: string;
begin
  try

    Update;
    pb.Position := 0;

    Update;
    pb.Position := 1;

    Update;
    pb.Position := 5;

    Sleep(1000);

    vConfigini := TIniFile.Create(gsAppPath + 'Config.ini');
    vAtualizacao := vConfigini.ReadString('Executavel', 'Executavel', '');
    vConfigini.Free;

    vExeNovo := StrToDate('01/01/1500');
    vExeAntigo := StrToDate('01/01/1500');

    FileAge(vAtualizacao, vExeNovo);

   // vExecutavel :=  'C:\Associacao\Prosperis.exe';
    vExecutavel := gsAppPath + 'Prosperis.exe';

    FileAge(vExecutavel, vExeAntigo);

    Update;
    pb.Position := pb.Position + 10;
    Update;
    pb.Position := pb.Position + 10;
    Update;
    pb.Position := pb.Position + 10;
    Update;
    Sleep(1000);
    pb.Position := pb.Position + 10;
    Update;
    pb.Position := pb.Position + 10;
    Update;

    if (vExeAntigo < vExeNovo) then
    begin

      if CopyFile(PChar(vAtualizacao), PChar(vExecutavel), False) then
      begin
        Update;
        pb.Position := pb.Position + 10;
      end;
    end;
    Sleep(1000);
    Update;
    pb.Position := pb.Position + 10;
    Sleep(500);
    Update;
    pb.Position := pb.Position + 10;
    Sleep(500);
    Update;
    pb.Position := pb.Position + 10;
    Sleep(500);
    Update;
    pb.Position := pb.Position + 10;
    Sleep(500);
    Update;
    pb.Position := pb.Position + 10;
    Sleep(500);
    Update;

  except
    updateFrm.Close;
    abrirArquivo(vExecutavel);
  end;
  updateFrm.Close;
  abrirArquivo(vExecutavel);
end;

procedure TupdateFrm.TimerTimer(Sender: TObject);
begin
  pUpdate;
end;

end.

