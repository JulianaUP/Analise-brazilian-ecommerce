SELECT 
    payment_type as metodo_pagamento,
    COUNT(*) as total_transacoes,
    ROUND(SUM(payment_value)::numeric, 2) as receita,
    ROUND(AVG(payment_value)::numeric, 2) as valor_medio
FROM orderpayments
GROUP BY payment_type
ORDER BY receita DESC;
