unit sincronizaComRmDmU;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Ora;

type
  TsincronizaComRmDm = class(TDataModule)
    stpProcessar: TOraStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sincronizaComRmDm: TsincronizaComRmDm;

implementation

uses prosperisFrmU;

{$R *.dfm}

end.
