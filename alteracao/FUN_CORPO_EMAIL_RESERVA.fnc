CREATE OR REPLACE FUNCTION FUN_CORPO_EMAIL_RESERVA(P_COD_RESERVA IN NUMBER)
  RETURN VARCHAR2 IS

  V_DT_RESERVA    DATE;
  V_CHURRASQUEIRA VARCHAR2(4000);
  V_FUNCIONARIO   VARCHAR2(4000);
  V_GERAL         VARCHAR2(4000);
  V_STATUS        VARCHAR2(4000);
  V_USUARIO       VARCHAR2(4000);
  V_TERMINAL      VARCHAR2(4000);
  V_OBSERVACAO    VARCHAR2(4000);
  V_TELEFONE      VARCHAR2(4000);

  RESULTADO VARCHAR2(4000);

BEGIN

  SELECT A.DINICRESER DT_RESERVA,
         B.CDESCCHURR CHURRASQUEIRA,
         C.CNOMEFUNCI FUNCIONARIO,
         ('Reserva do Funcionário(a) ' || C.CNOMEFUNCI || ' cracha: ' ||
         C.CCRACFUNCI || ' telefone: ' || A.CTECORESER || ' da ' || B.CDESCCHURR || 
         ' do dia ' || TO_CHAR(A.DINICRESER, 'DD/MM/YYYY') || '(' || A.CSTATRESER || ').') GERAL,
         A.CSTATRESER STATUS,
         D.CNOMEUSUAR USUARIO,
         A.CTERURESER TERMINAL,
         A.COBSERESER OBSERVACAO,
         A.CTECORESER TELEFONE
    INTO V_DT_RESERVA,
         V_CHURRASQUEIRA,
         V_FUNCIONARIO,
         V_GERAL,
         V_STATUS,
         V_USUARIO,
         V_TERMINAL,
         V_OBSERVACAO,
         V_TELEFONE
    FROM ASSRESER A, ASSCHURR B, ASSFUNCI C, SEGUSUAR D
   WHERE A.NCODICHURR = B.NCODICHURR
     AND A.NCODIFUNCI = C.NCODIFUNCI
     AND A.NCODIUSUAR = D.NCODIUSUAR
     AND A.NCODIRESER = P_COD_RESERVA;

RESULTADO :=' 
<!DOCTYPE html>
<html style="padding: 0px; margin: 0px;" lang="pt_br">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<title></title>
</head>
<body>
  <table style="text-align: left;" border="0"
    cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
      <td style="border-collapse: collapse; padding: 0px;
       text-align: left; font-family: Tahoma; padding: 10px 15px;">
        <small><span>Assunto: '|| V_GERAL ||'
        </span>
        <br></br>
        <span>Usuário: '|| V_USUARIO || ' - Terminal utilizado: ' || V_TERMINAL ||'.
        </span>
         <br></br>
        <span>Observação: '|| V_OBSERVACAO || '.
        </small>
        </td>
      </tr>
    </tbody>
  </table> _____________________________________________________________________________
  <table style="text-align: left; width: 800px;" border="0"
    cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td style="width: 5%;"><img src="https://lh3.googleusercontent.com/-2EXmpgcg64A/WQkmTZED23I/AAAAAAAAAFg/1Iz3blXF-KAekWANtivp2sJ0byvYnqVTwCL0B/w70-h45-no/afnp.png">
        </td>
        <td style="font-family: Tahoma;">
        <small><span style="font-weight: bold;"> Associação dos Funcionários da Cooperativa Nova Produtiva<br>
        </span>
        <span style="font-weight: bold;"></span> Diretor Presidente - Alexandro Monso Clemente<br>
        </small>
        <small>(44)3234-8500 - clemente@novaprodutiva.com.br<br>
        </small>
        </td>
      </tr>
    </tbody>
  </table>
  </br>
</body>
</html>';

  RETURN(RESULTADO);
END FUN_CORPO_EMAIL_RESERVA;
/
