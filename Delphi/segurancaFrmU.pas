unit segurancaFrmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, ExtCtrls, Buttons, geralU;

type
  TsegurancaFrm = class(TForm)
    pnl1: TPanel;
    btnSair: TSpeedButton;
    pnl2: TPanel;
    img1: TImage;
    mm1: TMainMenu;
    Cadastros1: TMenuItem;
    Sistema1: TMenuItem;
    Perfil1: TMenuItem;
    Usuario1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure Perfil1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grl : TGeral;
  end;

var
  segurancaFrm: TsegurancaFrm;

implementation

uses
  sistemaDmU, telaDoSistemaDmU, sistemaFrmU,
  perfilDmU, itemDoPerfilDmU, perfilFrmU,
  usuarioDmU, perfilDeUsuarioDmU, usuarioFrmU ;

{$R *.dfm}

procedure TsegurancaFrm.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TsegurancaFrm.FormCreate(Sender: TObject);
begin
  grl := TGeral.Create;
end;

procedure TsegurancaFrm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(grl);
end;

procedure TsegurancaFrm.Perfil1Click(Sender: TObject);
begin

  if grl.fPermissao('T','PERFIL') = False then
    Abort;

  if perfilFrm = nil then
    begin
      perfilFrm      := TperfilFrm.Create(segurancaFrm);
      perfilDm       := TperfilDm.Create(perfilFrm);
      itemDoPerfilDm := TitemDoPerfilDm.Create(perfilFrm);
      perfilFrm.Show;
    end
  else
    begin
      if perfilFrm.Showing = False then
        perfilFrm.Show;

      perfilFrm.WindowState := wsNormal;
    end;

end;

procedure TsegurancaFrm.Sistema1Click(Sender: TObject);
begin

  if grl.fPermissao('T','SISTEMA') = False then
    Abort;

  if sistemaFrm = nil then
    begin
      sistemaFrm      := TsistemaFrm.Create(segurancaFrm);
      sistemaDm       := TsistemaDm.Create(sistemaFrm);
      telaDoSistemaDm := TtelaDoSistemaDm.Create(sistemaFrm);
      sistemaFrm.Show;
    end
  else
    begin
      if sistemaFrm.Showing = False then
        sistemaFrm.Show;

      sistemaFrm.WindowState := wsNormal;
    end;

end;

procedure TsegurancaFrm.Usuario1Click(Sender: TObject);
begin

  if grl.fPermissao('T','USUARIO') = False then
    Abort;

  if usuarioFrm = nil then
    begin
      usuarioFrm        := TusuarioFrm.Create(segurancaFrm);
      usuarioDm         := TusuarioDm.Create(usuarioFrm);
      perfilDeUsuarioDm := TperfilDeUsuarioDm.Create(usuarioFrm);
      usuarioFrm.Show;
    end
  else
    begin
      if usuarioFrm.Showing = False then
        usuarioFrm.Show;

      usuarioFrm.WindowState := wsNormal;
    end;

end;

end.
