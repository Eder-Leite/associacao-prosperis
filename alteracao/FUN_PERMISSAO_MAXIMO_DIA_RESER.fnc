CREATE OR REPLACE FUNCTION FUN_PERMISSAO_MAXIMO_DIA_RESER(P_USUARIO    IN NUMBER,
                                                          P_DT_RESERVA IN DATE)
  RETURN VARCHAR2 IS
  --FUN_PERMISSAO_MAXIMO_DIA_RESERVA  

  V_QTD_DIAS   NUMBER := 0;
  V_DT_MAXIAMA DATE := SYSDATE;
  RESULTADO    VARCHAR2(1) := 'N';

BEGIN

  SELECT A.NQPDRUSUAR
    INTO V_QTD_DIAS
    FROM SEGUSUAR A
   WHERE A.NCODIUSUAR = P_USUARIO;

  V_DT_MAXIAMA := TO_CHAR((SYSDATE + V_QTD_DIAS), 'DD/MM/YYYY');

  IF P_DT_RESERVA > V_DT_MAXIAMA THEN
    RESULTADO := 'N';
  ELSE
    RESULTADO := 'S';
  END IF;

  RETURN(RESULTADO);
END FUN_PERMISSAO_MAXIMO_DIA_RESER;
/
