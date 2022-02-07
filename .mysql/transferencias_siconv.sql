CREATE DATABASE IF NOT EXISTS TRANSFERENCIAS_COVID;

CREATE TABLE TRANSFERENCIAS_COVID.TRANSFERENCIAS_COVID
(
    ID                               INT NOT NULL AUTO_INCREMENT,
    MESANO                           CHAR(6),
    TIPOTRANSFERENCIA                VARCHAR(200),
    CODIGOORGAO                      VARCHAR(10),
    ORGAO                            VARCHAR(200),
    TIPOFAVORECIDO                   VARCHAR(100),
    CODIGOFAVORECIDO                 VARCHAR(30),
    FAVORECIDO                       VARCHAR(200),
    CODIGOFUNCAO                     CHAR(2),
    FUNCAO                           VARCHAR(50),
    CODIGOPROGRAMA                   CHAR(4),
    PROGRAMA                         VARCHAR(200),
    CODIGOACAO                       CHAR(4),
    ACAO                             VARCHAR(200),
    CODIGOGRUPODESPESA               CHAR(2),
    GRUPODESPESA                     VARCHAR(200),
    CODIGOMODALIDADEAPLICACAODESPESA CHAR(2),
    MODALIDADEAPLICACAODESPESA       VARCHAR(200),
    CODIGOELEMENTODESPESA            CHAR(2),
    ELEMENTODESPESA                  VARCHAR(100),
    VALOR                            VARCHAR(20),
    PRIMARY KEY (ID)
);