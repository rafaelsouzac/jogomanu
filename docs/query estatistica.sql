select count(*) as total_registros,
sum(	case 
		when status_resposta = 'C' or status_resposta = 'c' then "1"
		else "0" 
    END) AS Corretas,
sum(	case 
		when status_resposta = 'I' or status_resposta = 'i' then "1"
		else "0" 
    END) AS Incorretas,
	ROUND(SUM(CASE WHEN status_resposta = 'C' or status_resposta = 'c' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS percentual_acertos
    FROM respostas;