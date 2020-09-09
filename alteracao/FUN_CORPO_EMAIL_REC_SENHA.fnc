CREATE OR REPLACE FUNCTION FUN_CORPO_EMAIL_REC_SENHA(P_EMAIL    IN VARCHAR2,
                                                     P_TERMINAL IN VARCHAR2)
  RETURN VARCHAR2 IS
  ---FUN_CORPO_EMAIL_RECUPERAR_SENHA 

  RESULTADO VARCHAR2(4000) := '';
  V_SENHA   VARCHAR2(4000);
  V_USUARIO VARCHAR2(4000);

BEGIN

  SELECT A.CLOGIUSUAR USUARIO, A.CPASSUSUAR SENHA
    INTO V_USUARIO, V_SENHA
    FROM SEGUSUAR A
   WHERE LOWER(A.CEMAIUSUAR) = LOWER(P_EMAIL);

  IF LENGTH(V_USUARIO) > 0 THEN
  
    RESULTADO := ' 
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
        <small><span>Assunto: Recuperação de senha. 
        </span>
        <br></br>
        <span>Seu usuário é: ' || V_USUARIO ||
                 ', com a senha: ' || V_SENHA || '.
        </span>
         <br></br>
        <span>Terminal utilizado: ' || P_TERMINAL || '.
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
  
  END IF;

  RETURN(RESULTADO);

END FUN_CORPO_EMAIL_REC_SENHA;
/
