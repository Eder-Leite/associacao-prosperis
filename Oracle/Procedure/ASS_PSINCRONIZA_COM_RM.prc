CREATE OR REPLACE PROCEDURE ASS_PSINCRONIZA_COM_RM AS

  CURSOR C_EXISTE_FUNCIONARIO_NOVA(PC_EMPRESA NUMBER,
                                   PC_CODIGO  NUMBER,
                                   PC_CRACHA  VARCHAR2) IS
    SELECT CASE
             WHEN (SELECT COUNT(*)
                     FROM ASSFUNCI A
                    WHERE A.NEMPRFUNCI = PC_EMPRESA
                      AND A.NPESSFUNCI = PC_CODIGO
                      AND A.CCRACFUNCI = PC_CRACHA) > 0 THEN
              'U'
             ELSE
              'I'
           END
      FROM DUAL;

  CURSOR C_EXISTE_FUNCIONARIO_RM(PC_EMPRESA NUMBER,
                                 PC_CODIGO  NUMBER,
                                 PC_CRACHA  VARCHAR2) IS
    SELECT CASE
             WHEN (SELECT COUNT(*)
                     FROM RM.PFUNC A
                    WHERE A.CODCOLIGADA = PC_EMPRESA
                      AND A.CODPESSOA = PC_CODIGO
                      AND A.CHAPA = PC_CRACHA) > 0 THEN
              'S'
             ELSE
              'N'
           END
      FROM DUAL;

  CURSOR C_NCODIFUNCI(PC_EMPRESA NUMBER,
                      PC_CODIGO  NUMBER,
                      PC_CRACHA  VARCHAR2) IS
    SELECT A.NCODIFUNCI
      FROM ASSFUNCI A
     WHERE A.NEMPRFUNCI = PC_EMPRESA
       AND A.NEMPRFUNCI = PC_CODIGO
       AND A.CCRACFUNCI = PC_CRACHA;

  CURSOR C_NCODIGOEMPRE(PC_NCODIFUNCI NUMBER) IS
    SELECT A.NEMPRFUNCI FROM ASSFUNCI A WHERE A.NCODIFUNCI = PC_NCODIFUNCI;

  V_INSERT_OU_UPDATE   VARCHAR2(1) := '';
  V_NCODIFUNCI         NUMBER := 0;
  V_NCODISITFU         NUMBER := 0;
  V_NCODIFUNFU         NUMBER := 0;
  V_CCHRMFUNCI         VARCHAR2(16) := '';
  V_NCODIGOEMPRE       NUMBER := 0;
  V_NCODIHIMUF         NUMBER := 0;
  V_CCODIFUNFU         VARCHAR2(10) := '';
  V_EXISTE_FUNCI_NO_RM VARCHAR2(1) := '';
  V_EXISTE_SITUA_NO_RM VARCHAR2(1) := '';
  V_EXISTE_FUNCA_NO_RM VARCHAR2(1) := '';
  C_EXISTE_HI_FU_NO_RM VARCHAR2(1) := '';

BEGIN

  --VERIFICA SE EXISTE FUNCIONARIO NA NOVA QUE NAO EXISTE NO RM E SE EXISTIR O MESMO SERA EXCLUIDO
  FOR EXCLUIR_FUNCIONARIO IN (SELECT A.NCODIFUNCI,
                                     A.NEMPRFUNCI,
                                     A.NPESSFUNCI,
                                     A.CCRACFUNCI
                                FROM ASSFUNCI A) LOOP
  
    IF EXCLUIR_FUNCIONARIO.CCRACFUNCI <> '0000001' THEN
    
      OPEN C_EXISTE_FUNCIONARIO_RM(EXCLUIR_FUNCIONARIO.NEMPRFUNCI,
                                   EXCLUIR_FUNCIONARIO.NPESSFUNCI,
                                   EXCLUIR_FUNCIONARIO.CCRACFUNCI);
      FETCH C_EXISTE_FUNCIONARIO_RM
        INTO V_EXISTE_FUNCI_NO_RM;
      CLOSE C_EXISTE_FUNCIONARIO_RM;
    
      IF V_EXISTE_FUNCI_NO_RM = 'N' THEN
      
        DELETE ASSFUNCI A
         WHERE A.NCODIFUNCI = EXCLUIR_FUNCIONARIO.NCODIFUNCI;
      
      END IF;
    
    END IF;
  
  END LOOP;

  --INSERE OU ATUALIZA FUNCIONARIOS
  FOR RM_PFUNC IN (SELECT A.CODCOLIGADA EMPRESA,
                          A.CODPESSOA   CODIGO,
                          A.CHAPA       CRACHA,
                          A.NOME        NOME,
                          A.CODSITUACAO SITUACAO
                     FROM RM.PFUNC A
                    ORDER BY 1, 2, 3) LOOP
  
    IF RM_PFUNC.CRACHA <> '0000001' THEN
    
      OPEN C_EXISTE_FUNCIONARIO_NOVA(RM_PFUNC.EMPRESA,
                                     RM_PFUNC.CODIGO,
                                     RM_PFUNC.CRACHA);
      FETCH C_EXISTE_FUNCIONARIO_NOVA
        INTO V_INSERT_OU_UPDATE;
      CLOSE C_EXISTE_FUNCIONARIO_NOVA;
    
      IF V_INSERT_OU_UPDATE = 'I' THEN
      
        INSERT INTO ASSFUNCI
        VALUES
          (ASS_SASSFUNCI.NEXTVAL,
           RM_PFUNC.EMPRESA,
           RM_PFUNC.CODIGO,
           RM_PFUNC.CRACHA,
           RM_PFUNC.NOME,
           RM_PFUNC.SITUACAO);
      
      ELSE
      
        OPEN C_NCODIFUNCI(RM_PFUNC.EMPRESA,
                          RM_PFUNC.CODIGO,
                          RM_PFUNC.CRACHA);
        FETCH C_NCODIFUNCI
          INTO V_NCODIFUNCI;
        CLOSE C_NCODIFUNCI;
      
        UPDATE ASSFUNCI A
           SET A.CSITUFUNCI = RM_PFUNC.SITUACAO
         WHERE A.NCODIFUNCI = V_NCODIFUNCI;
      
      END IF;
    
    END IF;
  
  END LOOP;

END ASS_PSINCRONIZA_COM_RM;
/
