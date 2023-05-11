BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tb_info_pessoais" (
	"id_info_pessoais"	INTEGER,
	"nome_info_pessoais"	TEXT NOT NULL,
	"cargo_info_pessoais"	TEXT NOT NULL,
	"foto_info_pessoais"	BLOB,
	PRIMARY KEY("id_info_pessoais" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_info_sobre_mim" (
	"id_info_sobre_mim"	INTEGER,
	"email_info_sobre_mim"	TEXT NOT NULL,
	"telefone_info_sobre_mim"	TEXT NOT NULL,
	"endereco_info_sobre_mim"	TEXT,
	"descricao_info_sobre_mim"	TEXT NOT NULL,
	"id_info_pessoais"	INTEGER NOT NULL,
	FOREIGN KEY("id_info_pessoais") REFERENCES "tb_info_pessoais"("id_info_pessoais"),
	PRIMARY KEY("id_info_sobre_mim" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_info_habilidade" (
	"id_info_habilidade"	INTEGER,
	"nome_info_habilidade"	TEXT NOT NULL,
	"nivel_info_habilidade"	TEXT NOT NULL,
	"id_info_pessoais"	INTEGER NOT NULL,
	FOREIGN KEY("id_info_pessoais") REFERENCES "tb_info_pessoais"("id_info_pessoais"),
	PRIMARY KEY("id_info_habilidade" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_info_personalidade" (
	"id_tb_info_personalidade"	INTEGER,
	"nome_info_personalidade"	TEXT NOT NULL,
	"nivel_info_personalidade"	TEXT NOT NULL,
	"id_info_pessoais"	INTEGER NOT NULL,
	FOREIGN KEY("id_info_pessoais") REFERENCES "tb_info_pessoais"("id_info_pessoais"),
	PRIMARY KEY("id_tb_info_personalidade" AUTOINCREMENT)
);
COMMIT;