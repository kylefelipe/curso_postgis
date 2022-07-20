CREATE TABLE IF NOT EXISTS public.mesorregioes_ibge
(
    id SERIAL NOT NULL,
    cd_meso text,
    nm_meso text,
    sigla text
);

COPY mesoregioes_ibge ("cd_meso", "nm_meso", "sigla")
FROM '/mesorregioes_ibge.csv'
WITH CSV HEADER;

INSERT INTO cidades_a_visitar (nome_do_municipio)
VALUES ('Lagoa Santa'),
        ('Gramado'),
        ('Bonito');

UPDATE cidades_a_visitar
SET nome_do_municipio = 'Bonito de Minas'
WHERE id = 4;

SELECT *
FROM municipios_ibge_2021;

SELECT *
FROM municipios_ibge_2021
WHERE cd_mun LIKE '31%';

SELECT id, nm_mun, cd_mun
FROM municipios_ibge_2021
WHERE cd_mun LIKE '31%';

SELECT id, nm_mun, cd_mun
FROM municipios_ibge_2021 AS mun
WHERE cd_mun LIKE '31%';

SELECT "mun"."id", "mun"."nm_mun", "mun"."cd_mun", "uf"."nm_uf" AS "estado"
FROM "municipios_ibge_2021" AS "mun"
JOIN "br_uf_2021" AS "uf" ON ( SUBSTRING("mun"."cd_mun", 0, 3) = "uf"."cd_uf")
WHERE "uf"."sigla" ILIKE 'MG'
LIMIT 10;

CREATE VIEW municipios_com_estados
AS SELECT "mun"."id", "mun"."nm_mun", "mun"."cd_mun", "uf"."nm_uf" AS "estado"
FROM "municipios_ibge_2021" AS "mun"
JOIN "br_uf_2021" AS "uf" ON ( SUBSTRING("mun"."cd_mun", 0, 3) = "uf"."cd_uf")
WHERE "uf"."sigla" ILIKE 'MG'
LIMIT 10;

CREATE TABLE "capitais_brasileiras"
(
    id SERIAL PRIMARY KEY,
    "y" FLOAT,
    "x" FLOAT,
    "nome" TEXT,
    "tipocapital" TEXT
)

COPY "capitais_brasileiras" ("y", "x", "nome", "tipocapital")
FROM '/capitais_brasileiras.csv'
WITH DELIMITER ';' CSV HEADER;

SELECT DISTINCT("tipodecapital") "tipo_capita"
FROM "capitais_brasileiras";

SELECT "tipocapital" "tipo_capital", COUNT(0)
FROM "capitais_brasileiras"
GROUP BY "tipocapital";

SELECT AddGeometryColumn('capitais_brasileiras', 'geom', 4674, 'POINT', 2);

UPDATE "capitais_brasileiras"
SET geom = ST_MakePoint("x", "y");
 