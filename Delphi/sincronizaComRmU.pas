unit sincronizaComRmU;

interface

  uses
    geralU, Forms, Windows, SysUtils, Dialogs;

type
  TSincronizaComRm = class(TGeral)

  public

    procedure pProcessar;

  end;

implementation

uses sincronizaComRmDmU, sincronizaComRmFrmU;

{ TSincronizaComRm }

procedure TSincronizaComRm.pProcessar;

  procedure piControlaBotoes(paAcao : string);
    begin

      with sincronizaComRmFrm do
        begin

          if paAcao = 'A' then
            begin

              btnProcessar.Enabled := False;
              btnSair.Enabled      := False;

            end
          else
            begin

              btnProcessar.Enabled := True;
              btnSair.Enabled      := True;

            end;

        end;

    end;

begin

  with sincronizaComRmDm, sincronizaComRmFrm do
    begin

      try

        pIniciaTransacao;

        piControlaBotoes('A');

        lbl1.Caption    := 'Processando...';
        lbl1.Font.Color := 255;

        Refresh;

        stpProcessar.ExecProc;

        piControlaBotoes('B');

        pAplicaTransacao;

        lbl1.Caption    := 'Livre';
        lbl1.Font.Color := 32768;

        Application.MessageBox('Sincronismo concluido.','Informacao.',MB_OK+MB_ICONINFORMATION);

      except

        Application.MessageBox('Problemas com o sincronismo!','Atencao!',MB_OK+MB_ICONWARNING);

        lbl1.Caption    := 'Livre';
        lbl1.Font.Color := 32768;

        piControlaBotoes('B');

        pCancelaTransacao;

      end;

    end;

end;

end.
