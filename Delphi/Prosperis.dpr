program Prosperis;

uses
  Forms,
  prosperisFrmU in 'prosperisFrmU.pas' {prosperisFrm},
  financeiroFrmU in 'financeiroFrmU.pas' {financeiroFrm},
  geralU in 'geralU.pas',
  dataModulePadraoDmU in 'dataModulePadraoDmU.pas' {dataModulePadraoDm: TDataModule},
  contaFinanceiraDmU in 'contaFinanceiraDmU.pas' {contaFinanceiraDm: TDataModule},
  padraoFrmU in 'padraoFrmU.pas' {padraoFrm},
  contaFinanceiraFrmU in 'contaFinanceiraFrmU.pas' {contaFinanceiraFrm},
  contaFinanceiraU in 'contaFinanceiraU.pas',
  categoriaDmU in 'categoriaDmU.pas' {categoriaDm: TDataModule},
  subcategoriaDmU in 'subcategoriaDmU.pas' {subcategoriaDm: TDataModule},
  categoriaSubcategoriaFrmU in 'categoriaSubcategoriaFrmU.pas' {categoriaSubcategoriaFrm},
  categoriaU in 'categoriaU.pas',
  subcategoriaU in 'subcategoriaU.pas',
  controleFinanceiroDmU in 'controleFinanceiroDmU.pas' {controleFinanceiroDm: TDataModule},
  controleFinanceiroFrmU in 'controleFinanceiroFrmU.pas' {controleFinanceiroFrm},
  controleFinanceiroU in 'controleFinanceiroU.pas',
  segurancaFrmU in 'segurancaFrmU.pas' {segurancaFrm},
  sistemaDmU in 'sistemaDmU.pas' {sistemaDm: TDataModule},
  telaDoSistemaDmU in 'telaDoSistemaDmU.pas' {telaDoSistemaDm: TDataModule},
  sistemaFrmU in 'sistemaFrmU.pas' {sistemaFrm},
  sistemaU in 'sistemaU.pas',
  telaDoSistemaU in 'telaDoSistemaU.pas',
  perfilDmU in 'perfilDmU.pas' {perfilDm: TDataModule},
  itemDoPerfilDmU in 'itemDoPerfilDmU.pas' {itemDoPerfilDm: TDataModule},
  perfilFrmU in 'perfilFrmU.pas' {perfilFrm},
  perfilU in 'perfilU.pas',
  itemDoPerfilU in 'itemDoPerfilU.pas',
  usuarioDmU in 'usuarioDmU.pas' {usuarioDm: TDataModule},
  perfilDeUsuarioDmU in 'perfilDeUsuarioDmU.pas' {perfilDeUsuarioDm: TDataModule},
  usuarioFrmU in 'usuarioFrmU.pas' {usuarioFrm},
  usuarioU in 'usuarioU.pas',
  perfilDeUsuarioU in 'perfilDeUsuarioU.pas',
  loginFrmU in 'loginFrmU.pas' {loginFrm},
  churrasqueiraDmU in 'churrasqueiraDmU.pas' {churrasqueiraDm: TDataModule},
  churrasqueiraFrmU in 'churrasqueiraFrmU.pas' {churrasqueiraFrm},
  churrasqueiraU in 'churrasqueiraU.pas',
  associacaoFrmU in 'associacaoFrmU.pas' {associacaoFrm},
  reservaDmU in 'reservaDmU.pas' {reservaDm: TDataModule},
  reservaFrmU in 'reservaFrmU.pas' {reservaFrm},
  reservaU in 'reservaU.pas',
  avaliacaoFisicaDmU in 'avaliacaoFisicaDmU.pas' {avaliacaoFisicaDm: TDataModule},
  avaliacaoFisicaFrmU in 'avaliacaoFisicaFrmU.pas' {avaliacaoFisicaFrm},
  avaliacaoFisicaU in 'avaliacaoFisicaU.pas',
  processoPadraoFrmU in 'processoPadraoFrmU.pas' {processoPadraoFrm},
  sincronizaComRmFrmU in 'sincronizaComRmFrmU.pas' {sincronizaComRmFrm},
  sincronizaComRmDmU in 'sincronizaComRmDmU.pas' {sincronizaComRmDm: TDataModule},
  sincronizaComRmU in 'sincronizaComRmU.pas',
  pertenceDeChurrasqueiraDmU in 'pertenceDeChurrasqueiraDmU.pas' {pertenceDeChurrasqueiraDm: TDataModule},
  pertenceDeChurrasqueiraU in 'pertenceDeChurrasqueiraU.pas',
  loginDmU in 'loginDmU.pas' {loginDm: TDataModule},
  funcionarioFrmU in 'funcionarioFrmU.pas' {funcionarioFrm},
  funcionarioDmU in 'funcionarioDmU.pas' {funcionarioDm: TDataModule},
  ReciboFrmU in 'ReciboFrmU.pas' {ReciboFrm},
  ReciboEntradaSaidaFrmU in 'ReciboEntradaSaidaFrmU.pas' {ReciboEntradaSaidaFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TprosperisFrm, prosperisFrm);
  Application.CreateForm(TReciboFrm, ReciboFrm);
  Application.CreateForm(TReciboEntradaSaidaFrm, ReciboEntradaSaidaFrm);
  Application.Run;
end.
