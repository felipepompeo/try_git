

ALTER TABLE client.tb_classe_judicial
ADD COLUMN in_designa_aud_errovc client.boleano DEFAULT 'N' NOT NULL;

ALTER TABLE client.tb_classe_judicial
ADD COLUMN in_controla_valor_causa client.boleano DEFAULT 'N' NOT NULL;

ALTER TABLE client.tb_classe_judicial
ADD COLUMN in_exige_autoridade client.boleano DEFAULT 'N' NOT NULL;

ALTER TABLE client.tb_classe_judicial
ADD COLUMN nr_piso_valor_causa DOUBLE PRECISION;

ALTER TABLE client.tb_classe_judicial
ADD COLUMN nr_teto_valor_causa DOUBLE PRECISION;


ALTER TABLE client.tb_jurisdicao
ADD COLUMN id_aplicacao integer;


ALTER TABLE criminal.tb_processo_expediente_criminal
ADD COLUMN in_situacao_expediente_criminal client.boleano DEFAULT 'N' NOT NULL;



select jurisdicao0_.id_jurisdicao as id1_266_1_,
       jurisdicao0_.id_aplicacao as id5_266_1_,
       jurisdicao0_.in_ativo as in2_266_1_,
       jurisdicao0_.id_estado as id6_266_1_,
       jurisdicao0_.ds_jurisdicao as ds3_266_1_,
       jurisdicao0_.nr_origem as nr4_266_1_,
       aplicacaoc1_.id_aplicacao_classe as id1_56_0_,
       aplicacaoc1_.ds_aplicacao_classe as ds2_56_0_,
       aplicacaoc1_.in_ativo as in3_56_0_
from client.tb_jurisdicao jurisdicao0_
     inner join client.tb_aplicacao_classe aplicacaoc1_ on
      jurisdicao0_.id_aplicacao = aplicacaoc1_.id_aplicacao_classe
where jurisdicao0_.id_jurisdicao =?;



select * from core.tb_parametro a where lower(a.ds_variavel) = 'idCaixaIntimacoesAutomaticasPendencia'