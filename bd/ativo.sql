CREATE SCHEMA IF NOT EXISTS ativo;
CREATE TABLE renda_v2.ativo.ativo (
	ativo_id numeric(24,0) NOT NULL,
    company_id varchar(32) NOT NULL,
    reference_date timestamp NOT NULL,
    start_date timestamp NOT NULL,
    end_date timestamp NOT NULL,
    publish_date timestamp NOT NULL,
    retrieval_date timestamp NOT NULL,
    total numeric(20,2) NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_ativo_company_refdate ON renda_v2.ativo.ativo (company_id, reference_date);


CREATE TABLE renda_v2.ativo.ativo_circulante (
	ativo_id numeric(24,0) NOT NULL,
    total numeric(20,2) NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_ativo_circulante_ativo_id ON renda_v2.ativo.ativo_circulante (ativo_id);



CREATE TABLE renda_v2.ativo.aplicacao_financeira (
	ativo_id numeric(24,0) NOT NULL,
    total numeric(20,2) NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_aplicacao_financeira_ativo_id ON renda_v2.ativo.aplicacao_financeira (ativo_id);


CREATE TABLE renda_v2.ativo.aplicacao_financeira_descritivo (
	ativo_id numeric(24,0) NOT NULL,
    nome varchar(256) NOT NULL,
    descritivo varchar(256) NOT NULL,
    total numeric(20,2) NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_aplicacao_financeira_descritivo_ativo_id ON renda_v2.ativo.aplicacao_financeira_descritivo (ativo_id);