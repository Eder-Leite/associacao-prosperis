unit controleFinanceiroU;

interface

  uses geralU, StrUtils, SysUtils, DB, DateUtils, RDprint;

type
  TControleFinanceiro = class(TGeral)

  public

    procedure pAlimentaPeriodo;
    procedure pListaFiltroCategoria;
    procedure pListaFiltroSubcategoria;
    procedure pListaFiltroContas;

    procedure pListaManipulaContaOrigem;
    procedure pListaManipulaContaDestino;
    procedure pListaManipulaCategoria;
    procedure pListaManipulaSubcategoria;

    procedure pControlaTipo;

    procedure pListar;
    procedure pManipula(paTipo : string);
    procedure pImprimir;
    procedure pImprimirSintetico;
    procedure pControlaVisualizacaoTipoRelatorio;

  end;

implementation

uses controleFinanceiroDmU, controleFinanceiroFrmU;

{ TContaFinanceira }

procedure TControleFinanceiro.pListar;

  var
    vInicio       : string;
    vFim          : string;
    vCategoria    : string;
    vSubcategoria : string;
    vDescricao    : string;
    vConta        : string;

  procedure piPreencherFiltros;
    begin

      with controleFinanceiroFrm do
        begin
          vInicio    := fValidaData(edt1,'D');
          vFim       := fValidaData(edt2,'D');
          vDescricao := edt3.Text;
        end;

      with controleFinanceiroDm do
        begin
          vCategoria    := qryListaFiltroCategoriaCODIGO.AsString;
          vSubcategoria := qryListaFiltroSubcategoriaCODIGO.AsString;
          vConta        := qryListaFiltroContaCODIGO.AsString;
        end;

    end;

begin

  piPreencherFiltros;

  with controleFinanceiroDm.qryLista do
    begin
      Close;
      ParamByName('INICIO').Value       := vInicio;
      ParamByName('FIM').Value          := vFim;
      ParamByName('CATEGORIA').Value    := vCategoria;
      ParamByName('SUBCATEGORIA').Value := vSubcategoria;
      ParamByName('DESCRICAO').Value    := vDescricao;
      ParamByName('CONTA').Value        := vConta;
      Open;
    end;

end;

procedure TControleFinanceiro.pManipula(paTipo: string);

  var
    vCodigo : Integer;

  procedure piBuscarRegistro;
    begin

      with controleFinanceiroDm do
        begin

          if paTipo = 'novo' then
            vCodigo := 0
          else
            if qryLista.IsEmpty then
              Abort
            else
              vCodigo := qryListaNCODIFINAN.AsInteger;

          with qryManipula do
            begin
              Close;
              ParamByName('CODIGO').Value := vCodigo;
              Open;
            end;

        end;

    end;

  procedure piValidaCampos;
    begin

        with controleFinanceiroDm, controleFinanceiroFrm do
          begin

            pValidaCampos(controleFinanceiroFrm,grp3);

            pValidaCampos(controleFinanceiroFrm,grp11);

            if (rg1.ItemIndex = 0) or (rg1.ItemIndex = 1) then
              begin

                pValidaCampos(controleFinanceiroFrm,grp8);

                pValidaCampos(controleFinanceiroFrm,grp9);

                qryManipulaNORIGCONFI.Clear;

              end
            else
              begin

                pValidaCampos(controleFinanceiroFrm,grp10);

                qryManipulaNCODIGREDE.Clear;
                qryManipulaNCODISREDE.Clear;

              end;

              pValidaCampos(controleFinanceiroFrm,grp12);
              pValidaCampos(controleFinanceiroFrm,grp13);

          end;

    end;

begin

  with controleFinanceiroFrm, controleFinanceiroDm do
    begin

      if paTipo = 'novo' then
        begin

          piBuscarRegistro;

          qryManipula.Insert;
          qryManipulaDDATAFINAN.Value := Date;
          qryManipulaDDTVEFINAN.Value := Date;
          qryManipulaCTIPOFINAN.Value := 'D';
          qryManipulaCMVCOFINAN.Value := 'N';

          pControlaTipo;

          qryManipulaNDESTCONFI.Value := 0;
          qryManipulaNCODIGREDE.Value := 0;
          qryManipulaNCODISREDE.Value := 0;

        end;

      if paTipo = 'excluir' then
        begin

          pExcluirRegistro('FINFINAN',qryListaNCODIFINAN.AsString,'N');

          pListar;

          pListaFiltroContas;

        end;

      if paTipo = 'editar' then
        begin

          piBuscarRegistro;

          qryManipula.Edit;

          pControlaTipo;

        end;

      if paTipo = 'salvar' then
        begin

          piValidaCampos;

          try

            pIniciaTransacao;

            if qryManipula.State in [dsInsert] then
              vCodigo := fCodigo('FIN_SFINFINAN')
            else
              vCodigo := qryManipulaNCODIFINAN.AsInteger;

            qryManipulaNCODIFINAN.Value := vCodigo;
            qryManipula.Post;
            qryManipula.Close;

            pAplicaTransacao;

            pListar;

            qryLista.Locate('NCODIFINAN',vCodigo,[]);

            pListaFiltroContas;

          except

            pCancelaTransacao;

          end;

        end;

      if paTipo = 'cancelar' then
        begin

          qryManipula.Cancel;
          qryManipula.Close;

        end;

      if (paTipo = 'novo') or (paTipo = 'editar') then
        pControlaBotoes('A',controleFinanceiroFrm,pnl1,pgc1,grp3)
      else
        pControlaBotoes('B',controleFinanceiroFrm,pnl1,pgc1,grp3);

      btnAnalitico.Visible := False;
      btnSintetico.Visible := False;

    end;

end;

procedure TControleFinanceiro.pAlimentaPeriodo;
begin
  with controleFinanceiroFrm do
    begin
      edt1.Text := DateToStr(StartOfTheMonth(now));
      edt2.Text := DateToStr(EndOfTheMonth(now));
    end;
end;

procedure TControleFinanceiro.pControlaTipo;
begin

  with controleFinanceiroDm, controleFinanceiroFrm do
    begin

      pListaManipulaContaDestino;

      if (rg1.ItemIndex = 0) or (rg1.ItemIndex = 1) then
        begin


          grp10.Enabled := False;
          qryListaManipulaContaOrigem.Close;

          grp8.Enabled := True;
          pListaManipulaCategoria;

          grp9.Enabled := True;
          pListaManipulaSubcategoria;

        end
      else
        begin

          grp10.Enabled := True;
          pListaManipulaContaOrigem;

          grp8.Enabled := False;
          qryListaManipulaCategoria.Close;

          grp9.Enabled := False;
          qryListaManipulaSubcategoria.Close;

        end;

    end;

end;

procedure TControleFinanceiro.pControlaVisualizacaoTipoRelatorio;
begin

  with controleFinanceiroFrm do
    begin
      if btnAnalitico.Visible = False then
        begin
          btnAnalitico.Visible := True;
          btnSintetico.Visible := True;
        end
      else
        begin
          btnAnalitico.Visible := False;
          btnSintetico.Visible := False;
        end;
    end;

end;

procedure TControleFinanceiro.pImprimir;

  var
    vLinha      : Integer;
    vPagina     : Integer;
    vData       : string;
    vValor      : Double;
    vCor        : Integer;
    vTotalData  : Double;
    vTotalGeral : Double;

  procedure piCabecalho;
    begin
      if (vLinha > 70) or (vPagina = 0) then
        begin
          vLinha := 1;

          with vPrint do
            begin

              if vPagina = 0 then
                vPagina := 1
              else
                begin
                  Inc(vPagina);
                  Novapagina;
                end;

              vLinha := 1;

              Imp   (vLinha,001,'RELATORIO:');
              ImpF  (vLinha,012,'CONTROLE FINANCEIRO ANALITICO',[negrito]);
              ImpVal(vLinha,171,'PAGINA ##0',vPagina,[]);

              Inc(vLinha);

              Imp   (vLinha,001,'DATA.....:');
              ImpF  (vLinha,012,DateToStr(Date) + ' - ' + TimeToStr(Time),[negrito]);

              Inc(vLinha);

              if vPagina = 1 then
                begin

                  with controleFinanceiroFrm, controleFinanceiroDm do
                    begin

                      Imp   (vLinha,001,fReplicaCaracter('-',180));

                      Inc(vLinha);

                      Imp   (vLinha,001,'PERIODO.....:');
                      ImpF  (vLinha,015,edt1.Text + ' - ' + edt2.Text,[negrito]);

                      Imp   (vLinha,091,'CONTA.......:');
                      ImpF  (vLinha,105,qryListaFiltroContaDESCRICAO.AsString,[negrito]);

                      piCabecalho;

                      Imp   (vLinha,001,'CATEGORIA...:');
                      ImpF  (vLinha,015,qryListaFiltroCategoriaDESCRICAO.AsString,[negrito]);

                      Imp   (vLinha,091,'DESCRICAO...:');

                      if Length(Trim(edt3.Text)) <= 0 then
                        ImpF  (vLinha,105,'TODOS...',[negrito])
                      else
                        ImpF  (vLinha,105,edt3.Text,[negrito]);

                      piCabecalho;

                      Imp   (vLinha,001,'SUBCATEGORIA:');
                      ImpF  (vLinha,015,qryListaFiltroSubcategoriaDESCRICAO.AsString,[negrito]);

                    end;

                  piCabecalho;

                end;

              Imp   (vLinha,001,fReplicaCaracter('=',180));

              Inc(vLinha);

              ImpF  (vLinha,001,'DATA',[negrito]);
              ImpF  (vLinha,012,'|',[negrito]);
              ImpF  (vLinha,014,'DESCRICAO',[negrito]);
              ImpF  (vLinha,073,'|',[negrito]);
              ImpF  (vLinha,075,'GRUPO / SUBGRUPO',[negrito]);
              ImpF  (vLinha,118,'|',[negrito]);
              ImpF  (vLinha,120,'CONTA',[negrito]);
              ImpF  (vLinha,165,'|',[negrito]);
              ImpF  (vLinha,176,'VALOR',[negrito]);

              Inc(vLinha);

              Imp   (vLinha,001,fReplicaCaracter('=',180));

              Inc(vLinha);

            end;
        end
      else
        Inc(vLinha);
    end;

begin

  with controleFinanceiroDm do
    begin

      if qryLista.IsEmpty then
        Abort;

      pPrint('A','P');

      with vPrint do
        begin

          vPagina     := 0;
          vTotalData  := 0;
          vTotalGeral := 0;

          qryLista.First;

          piCabecalho;

          vData := qryListaDDATAFINAN.AsString;
          ImpF  (vLinha,001,vData,[negrito],128);

          piCabecalho;

          Imp   (vLinha,001,fReplicaCaracter('°',012),128);

          while not qryLista.Eof do
            begin

              if vData <> qryListaDDATAFINAN.AsString then
                begin

                  Imp   (vLinha,012,fReplicaCaracter('°',168),128);

                  piCabecalho;

                  if vTotalData < 0 then
                    begin
                      vTotalData := vTotalData * -1;
                      vCor       := 255;
                    end
                  else
                    vCor := 32768;

                  ImpVal(vLinha,167,'###,###,##0.00',vTotalData,[negrito],vCor);
                  vTotalData := 0;

                  piCabecalho;

                  vData := qryListaDDATAFINAN.AsString;
                  ImpF  (vLinha,001,vData,[negrito],128);

                  piCabecalho;

                  Imp   (vLinha,001,fReplicaCaracter('°',012),128);
                end;

              vValor := qryListaVALOR.AsFloat;

              if vValor < 0 then
                begin
                  vValor := vValor * -1;
                  vCor   := 255;
                end
              else
                vCor := 32768;

              Imp   (vLinha,012,'°',128);

                if qryListaCTIPOFINAN.Value <> 'T' then
                  begin
                    Imp   (vLinha,014,qryListaCDESCFINAN.AsString,vCor);
                    Imp   (vLinha,075,qryListaCATEGORIA_SUBCATEGORIA.AsString,vCor);
                    Imp   (vLinha,120,qryListaCONTA.AsString,vCor);
                    ImpVal(vLinha,167,'###,###,##0.00',vValor,[],vCor);
                  end
                else
                  if qryListaFiltroContaCODIGO.Value = '%' then
                    begin

                      Imp   (vLinha,014,qryListaCDESCFINAN.AsString,255);
                      Imp   (vLinha,075,qryListaCATEGORIA_SUBCATEGORIA.AsString,255);
                      Imp   (vLinha,120,qryListaCONTA.AsString,255);
                      ImpVal(vLinha,167,'###,###,##0.00',vValor * 1,[],255);

                      piCabecalho;

                      Imp   (vLinha,012,'°',128);
                      Imp   (vLinha,014,qryListaCDESCFINAN.AsString,32768);
                      Imp   (vLinha,075,qryListaCATEGORIA_SUBCATEGORIA.AsString,32768);
                      Imp   (vLinha,120,qryListaCONTA.AsString,32768);
                      ImpVal(vLinha,167,'###,###,##0.00',vValor,[],32768);

                    end
                  else
                    begin

                      if qryListaFiltroContaCODIGO.AsString = qryListaNORIGCONFI.AsString then
                        begin

                          Imp   (vLinha,014,qryListaCDESCFINAN.AsString,255);
                          Imp   (vLinha,075,qryListaCATEGORIA_SUBCATEGORIA.AsString,255);
                          Imp   (vLinha,120,qryListaCONTA.AsString,255);
                          ImpVal(vLinha,167,'###,###,##0.00',vValor * 1,[],255);

                        end;

                      if qryListaFiltroContaCODIGO.AsString = qryListaNDESTCONFI.AsString then
                        begin

                          Imp   (vLinha,014,qryListaCDESCFINAN.AsString,32768);
                          Imp   (vLinha,075,qryListaCATEGORIA_SUBCATEGORIA.AsString,32768);
                          Imp   (vLinha,120,qryListaCONTA.AsString,32768);
                          ImpVal(vLinha,167,'###,###,##0.00',vValor,[],32768);

                        end;

                    end;

              piCabecalho;

              if qryListaCTIPOFINAN.Value <> 'T' then
                begin
                  vTotalData  := vTotalData  + qryListaVALOR.AsFloat;
                  vTotalGeral := vTotalGeral + qryListaVALOR.AsFloat;
                end
              else
                if qryListaFiltroContaCODIGO.Value <> '%' then
                  begin

                    if qryListaFiltroContaCODIGO.AsString = qryListaNORIGCONFI.AsString then
                      begin

                        vTotalData  := vTotalData  - qryListaVALOR.AsFloat;
                        vTotalGeral := vTotalGeral - qryListaVALOR.AsFloat;

                      end;

                    if qryListaFiltroContaCODIGO.AsString = qryListaNDESTCONFI.AsString then
                      begin

                        vTotalData  := vTotalData  + qryListaVALOR.AsFloat;
                        vTotalGeral := vTotalGeral + qryListaVALOR.AsFloat;

                      end;

                  end;

              qryLista.Next;

            end;

          Imp   (vLinha,012,fReplicaCaracter('°',168),128);

          piCabecalho;

          if vTotalData < 0 then
            begin
              vTotalData := vTotalData * -1;
              vCor       := 255;
            end
          else
            vCor := 32768;

          ImpVal(vLinha,167,'###,###,##0.00',vTotalData,[negrito],vCor);

          piCabecalho;

          Imp   (vLinha,001,fReplicaCaracter('=',180));

          piCabecalho;

          if vTotalGeral < 0 then
            begin
              vTotalGeral := vTotalGeral * -1;
              vCor        := 255;
            end
          else
            vCor := 32768;

          ImpVal(vLinha,167,'###,###,##0.00',vTotalGeral,[negrito],vCor);

        end;

      pPrint('F','');

    end;

end;

procedure TControleFinanceiro.pImprimirSintetico;

  var
    vLinha          : Integer;
    vPagina         : Integer;
    vValor          : Double;
    vCor            : Integer;
    vTipo           : string;
    vTotalCategoria : Double;
    vTotalGeral     : Double;

  procedure piCabecalho;
    begin
      if (vLinha > 80) or (vPagina = 0) then
        begin
          vLinha := 1;

          with vPrint do
            begin

              if vPagina = 0 then
                vPagina := 1
              else
                begin
                  Inc(vPagina);
                  Novapagina;
                end;

              vLinha := 1;

              Imp   (vLinha,001,'RELATORIO:');
              ImpF  (vLinha,012,'CONTROLE FINANCEIRO SINTETICO',[negrito]);
              ImpVal(vLinha,091,'PAGINA ##0',vPagina,[]);

              Inc(vLinha);

              Imp   (vLinha,001,'DATA.....:');
              ImpF  (vLinha,012,DateToStr(Date) + ' - ' + TimeToStr(Time),[negrito]);

              Inc(vLinha);

              if vPagina = 1 then
                begin

                  with controleFinanceiroFrm, controleFinanceiroDm do
                    begin

                      Imp   (vLinha,001,fReplicaCaracter('-',100));

                      Inc(vLinha);

                      Imp   (vLinha,001,'PERIODO.....:');
                      ImpF  (vLinha,015,edt1.Text + ' - ' + edt2.Text,[negrito]);

                      piCabecalho;

                      Imp   (vLinha,001,'CATEGORIA...:');
                      ImpF  (vLinha,015,qryListaFiltroCategoriaDESCRICAO.AsString,[negrito]);

                      piCabecalho;

                      Imp   (vLinha,001,'CONTA.......:');
                      ImpF  (vLinha,015,qryListaFiltroContaDESCRICAO.AsString,[negrito]);

                    end;

                  piCabecalho;

                end;

              Imp   (vLinha,001,fReplicaCaracter('=',100));

              Inc(vLinha);

              ImpF  (vLinha,001,'TIPO',[negrito]);
              ImpF  (vLinha,009,'|',[negrito]);
              ImpF  (vLinha,011,'CATEGORIA',[negrito]);
              ImpF  (vLinha,085,'|',[negrito]);
              ImpF  (vLinha,096,'VALOR',[negrito]);

              Inc(vLinha);

              Imp   (vLinha,001,fReplicaCaracter('=',100));

              Inc(vLinha);

            end;
        end
      else
        Inc(vLinha);
    end;

  procedure piListar;

    var
      vInicio       : string;
      vFim          : string;
      vCategoria    : string;
      vConta        : string;

    procedure piPreencherFiltros;
      begin

        with controleFinanceiroFrm do
          begin
            vInicio    := fValidaData(edt1,'D');
            vFim       := fValidaData(edt2,'D');
          end;

        with controleFinanceiroDm do
          begin
            vCategoria    := qryListaFiltroCategoriaCODIGO.AsString;
            vConta        := qryListaFiltroContaCODIGO.AsString;
          end;

      end;

  begin

    piPreencherFiltros;

    with controleFinanceiroDm.qryRelSintetico do
      begin
        Close;
        ParamByName('INICIO').Value       := vInicio;
        ParamByName('FIM').Value          := vFim;
        ParamByName('CATEGORIA').Value    := vCategoria;
        ParamByName('CONTA').Value        := vConta;
        Open;
      end;

  end;

  procedure piCor;
    begin
      if controleFinanceiroDm.qryRelSinteticoTIPO.Value = 'DESPESA' then
           vCor   := 255
      else
       vCor := 32768;
    end;

begin

  with controleFinanceiroDm do
    begin

      piListar;

      if qryRelSintetico.IsEmpty then
        Abort;

      vPagina := 0;
      vLinha  := 0;

      vTotalCategoria := 0;
      vTotalGeral     := 0;

      pPrint('A','R');

      piCabecalho;

      with vPrint do
        begin

          vPagina     := 0;

          qryRelSintetico.First;

          piCor;

          vTipo := qryRelSinteticoTIPO.AsString;
          Imp   (vLinha,001,vTipo,vCor);

          piCabecalho;
          piCabecalho;

          Imp   (vLinha,001,fReplicaCaracter('°',009),vCor);

          while not qryRelSintetico.Eof do
            begin

              if vTipo <> qryRelSinteticoTIPO.AsString then
                begin
                  Imp   (vLinha,009,fReplicaCaracter('°',092),vCor);

                  piCabecalho;

                  ImpVal(vLinha,087,'###,###,##0.00',vTotalCategoria,[negrito],vCor);
                  vTotalCategoria := 0;

                  piCabecalho;

                  piCor;
                  vTipo := qryRelSinteticoTIPO.AsString;
                  Imp   (vLinha,001,vTipo,vCor);

                  piCabecalho;

                  Imp   (vLinha,001,fReplicaCaracter('°',009),vCor);
                end;

              vValor := qryRelSinteticoVALOR.AsFloat;

              if qryRelSinteticoTIPO.Value = 'DESPESA' then
                begin
                  vValor := vValor * -1;
                  vCor   := 255;
                end
              else
                vCor := 32768;

              Imp   (vLinha,009,'°',vCor);
              Imp   (vLinha,011,qryRelSinteticoCATEGORIA.AsString,vCor);
              ImpVal(vLinha,087,'###,###,##0.00',vValor,[normal],vCor);

              piCabecalho;

              vTotalCategoria := vTotalCategoria + vValor;
              vTotalGeral     := vTotalGeral     + vValor;

              qryRelSintetico.Next;

            end;

          Imp   (vLinha,009,fReplicaCaracter('°',092),vCor);

          piCabecalho;

          ImpVal(vLinha,087,'###,###,##0.00',vTotalCategoria,[negrito],vCor);

          piCabecalho;

          Imp   (vLinha,001,fReplicaCaracter('=',100));

          piCabecalho;

          ImpVal(vLinha,087,'###,###,##0.00',vTotalGeral,[negrito]);

        end;

      pPrint('F','');

    end;

end;

procedure TControleFinanceiro.pListaFiltroCategoria;
begin
  with controleFinanceiroDm.qryListaFiltroCategoria do
    begin
      Close;
      Open;
    end;
end;

procedure TControleFinanceiro.pListaFiltroContas;
begin
  with controleFinanceiroDm.qryListaFiltroConta do
    begin
      Close;
      Open;
    end;
end;

procedure TControleFinanceiro.pListaFiltroSubcategoria;

  var
    vCodigo : string;

begin

  with controleFinanceiroDm do
    begin

      vCodigo := qryListaFiltroCategoriaCODIGO.AsString;

      with qryListaFiltroSubcategoria do
        begin
          Close;
          ParamByName('CODIGO').Value := vCodigo;
          Open;
        end;

    end;

end;

procedure TControleFinanceiro.pListaManipulaCategoria;
begin
  with controleFinanceiroDm.qryListaManipulaCategoria do
    begin
      Close;
      Open;
    end;
end;

procedure TControleFinanceiro.pListaManipulaContaDestino;
begin
  with controleFinanceiroDm.qryListaManipulaContaDestino do
    begin
      Close;
      Open;
    end;
end;

procedure TControleFinanceiro.pListaManipulaContaOrigem;
begin
  with controleFinanceiroDm.qryListaManipulaContaOrigem do
    begin
      Close;
      Open;
    end;
end;

procedure TControleFinanceiro.pListaManipulaSubcategoria;
begin
  with controleFinanceiroDm.qryListaManipulaSubcategoria, controleFinanceiroDm do
    begin
      Close;
      ParamByName('CODIGO').Value := qryListaManipulaCategoriaCODIGO.Value;
      Open;
    end;
end;

end.
