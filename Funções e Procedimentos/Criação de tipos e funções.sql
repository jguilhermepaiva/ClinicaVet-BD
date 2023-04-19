

-- CRIACAO DO TIPO ENDERECO
CREATE OR REPLACE TYPE TP_ENDERECO AS OBJECT(
	CEP VARCHAR2(10), -- XX.XXX-XXX
	RUA VARCHAR2(255),
    NUMERO INTEGER,
   	CIDADE VARCHAR2(255),

    MEMBER PROCEDURE EXIBIRENDERECO
);
/

-- BODY DO TIPO ENDERECO
CREATE OR REPLACE TYPE BODY TP_ENDERECO AS   
    MEMBER PROCEDURE EXIBIRENDERECO IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Endereço:');
        DBMS_OUTPUT.PUT_LINE(RUA || ', ' || TO_CHAR(NUMERO));
        DBMS_OUTPUT.PUT_LINE('CEP: ' || CEP);
        DBMS_OUTPUT.PUT_LINE(cidade);

    END;
END;
/

-- CRIACAO DO TIPO TELEFONE
CREATE OR REPLACE TYPE TP_TELEFONE AS OBJECT(
    TELEFONE VARCHAR2(14) -- (XX)XXXXX-XXXX
) NOT FINAL;
/

-- CRIACAO DO TIPO TELEFONES (ATRIBUTO MULTIVALORADO - LISTA DE VARIOS TELEFONES)
CREATE OR REPLACE TYPE TP_TELEFONES AS VARRAY(3) OF TP_TELEFONE;
/

-- CRIACAO DO TIPO PESSOA
CREATE OR REPLACE TYPE TP_PESSOA AS OBJECT(
    NOME VARCHAR2(255),
    CPF VARCHAR2(25), 
    ENDERECO TP_ENDERECO,

    CONSTRUCTOR FUNCTION TP_PESSOA(SELF IN OUT NOCOPY TP_PESSOA, NOME VARCHAR2, CPF VARCHAR2, ENDERECO TP_ENDERECO) RETURN SELF AS RESULT,
    ORDER MEMBER FUNCTION ORDENAPORNOME(P TP_PESSOA) RETURN INTEGER,
    MEMBER FUNCTION MESMOLUGAR(P1 TP_PESSOA, P2 TP_PESSOA) RETURN BOOLEAN
) NOT FINAL;
/

-- BODY DO TIPO PESSOA
CREATE OR REPLACE TYPE BODY TP_PESSOA AS
    CONSTRUCTOR FUNCTION TP_PESSOA(SELF IN OUT NOCOPY TP_PESSOA, NOME VARCHAR2, CPF VARCHAR2, ENDERECO TP_ENDERECO) RETURN SELF AS RESULT IS
    BEGIN
        SELF.NOME:= NOME;
        SELF.CPF:= CPF;
		SELF.ENDERECO:= ENDERECO;
	    RETURN;
    END;

    ORDER MEMBER FUNCTION ORDENAPORNOME(P TP_PESSOA) RETURN INTEGER IS
    BEGIN
        IF SELF.NOME > P.NOME THEN
            RETURN (1);
        ELSE
            IF SELF.NOME < P.NOME THEN
                RETURN (-1);
            ELSE
                RETURN (0);
            END IF;
        END IF;
    END;
    MEMBER FUNCTION MESMOLUGAR(P1 TP_PESSOA, P2 TP_PESSOA) RETURN BOOLEAN IS
    BEGIN
        IF P1.ENDERECO.CIDADE = P2.ENDERECO.CIDADE THEN
            RETURN (TRUE);
        ELSE 
            RETURN (FALSE);
        END IF;
    END;    
END;
/
    

-- CRIACAO DO TIPO CLIENTE (ESPECIALIZAO DE PESSOA)
CREATE OR REPLACE TYPE TP_CLIENTE UNDER TP_PESSOA(
    TELEFONES TP_TELEFONES
);
/



CREATE OR REPLACE TYPE TP_CLINICA AS OBJECT(
    CNPJ VARCHAR2(14),
    NOME VARCHAR2(255),
    ENDERECO TP_ENDERECO,

    CONSTRUCTOR FUNCTION TP_CLINICA(SELF IN OUT NOCOPY TP_CLINICA, CNPJ VARCHAR2, NOME VARCHAR2, ENDERECO TP_ENDERECO) RETURN SELF AS RESULT
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY TP_CLINICA AS
    CONSTRUCTOR FUNCTION TP_CLINICA(SELF IN OUT NOCOPY TP_CLINICA, CNPJ VARCHAR2, NOME VARCHAR2, ENDERECO TP_ENDERECO) RETURN SELF AS RESULT IS
    BEGIN
        SELF.NOME:= NOME;
        SELF.CNPJ:= CNPJ;
		SELF.ENDERECO:= ENDERECO;
	    RETURN;
    END;
END;
/

-- TIPO DESCONTO
CREATE OR REPLACE TYPE TP_DESCONTO AS OBJECT(
    CUPOM VARCHAR2(11),
    VALOR NUMBER(4,2),

    CONSTRUCTOR FUNCTION TP_DESCONTO(SELF IN OUT NOCOPY TP_DESCONTO, CUPOM VARCHAR2, VALOR NUMBER) RETURN SELF AS RESULT
) NOT FINAL;
/

CREATE OR REPLACE TYPE TP_EMPREGADO UNDER TP_PESSOA(
    CNPJ_CLINICA VARCHAR(14),
    SALARIO NUMBER,
    TELEFONES TP_TELEFONES,

    MEMBER PROCEDURE comparaSalario(E1 TP_EMPREGADO, E2 TP_EMPREGADO),
    FINAL MEMBER FUNCTION bonusSalarioAnual(E TP_EMPREGADO) RETURN NUMBER
);
/

-- BODY DO TIPO EMPREGADO
CREATE OR REPLACE TYPE BODY TP_EMPREGADO AS
    MEMBER PROCEDURE comparaSalario(E1 TP_EMPREGADO, E2 TP_EMPREGADO) IS
    BEGIN
        IF E1.SALARIO > E2.SALARIO THEN
            DBMS_OUTPUT.PUT_LINE(E1.NOME || ' recebe R$' || (E1.SALARIO - E2.SALARIO) || ' a mais que ' || E2.NOME);
        ELSE
            IF E1.SALARIO < E2.SALARIO THEN
                DBMS_OUTPUT.PUT_LINE(E2.NOME || ' recebe R$' || (E2.SALARIO - E1.SALARIO) || ' a mais que ' || E1.NOME);
            ELSE
                DBMS_OUTPUT.PUT_LINE(E2.NOME || ' e ' || E1.NOME || ' recebem o mesmo salario');
            END IF;
        END IF;        
    END;
    
    FINAL MEMBER FUNCTION bonusSalarioAnual(E TP_EMPREGADO) RETURN NUMBER IS
    BEGIN
        RETURN (E.SALARIO * 1.15);
    END;

END;
/

ALTER TYPE TP_EMPREGADO
ADD ATTRIBUTE(CHEFE REF TP_EMPREGADO) CASCADE;
/

CREATE OR REPLACE TYPE TP_LOJA AS OBJECT(
    CODLOJA VARCHAR2(10),
    CNPJ_CLINICA VARCHAR2(14),
    TELEFONES TP_TELEFONES,
    ENDERECO TP_ENDERECO,

    CONSTRUCTOR FUNCTION TP_LOJA(SELF IN OUT NOCOPY TP_LOJA, CODLOJA VARCHAR2, CNPJ VARCHAR2, TELEFONES TP_TELEFONE,  ENDERECO TP_ENDERECO ) RETURN SELF AS RESULT
) NOT FINAL;
/
