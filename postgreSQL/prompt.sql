select s1_0.id,s1_0.atores,s1_0.avaliacao,s1_0.genero,s1_0.poster,s1_0.sinopse,s1_0.titulo,s1_0.total_temporadas
from
series s1_0
left join episodios el_0 on s1_0.id=e1_0.serie_id
order by e1_0.data_lancamento desc fetch first 5 rows only