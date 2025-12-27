SELECT 
    payment_type as metodo_pagamento,
    COUNT(*) as transacoes,
    ROUND(SUM(payment_value)::numeric, 2) as receita_total,
    ROUND(SUM(
        CASE 
            WHEN payment_type = 'credit_card' THEN payment_value * 0.029 + 0.30
            WHEN payment_type = 'boleto' THEN payment_value * 0.015 + 0.50
            WHEN payment_type = 'debit_card' THEN payment_value * 0.019 + 0.25
            WHEN payment_type = 'voucher' THEN payment_value * 0.08
            ELSE 0
        END
    )::numeric, 2) as custo_transacao,
    ROUND(SUM(payment_value)::numeric - SUM(
        CASE 
            WHEN payment_type = 'credit_card' THEN payment_value * 0.029 + 0.30
            WHEN payment_type = 'boleto' THEN payment_value * 0.015 + 0.50
            WHEN payment_type = 'debit_card' THEN payment_value * 0.019 + 0.25
            WHEN payment_type = 'voucher' THEN payment_value * 0.08
            ELSE 0
        END
    )::numeric, 2) as receita_liquida,
    CASE 
        WHEN SUM(payment_value) > 0 THEN 
            ROUND(((SUM(payment_value)::numeric - SUM(
                CASE 
                    WHEN payment_type = 'credit_card' THEN payment_value * 0.029 + 0.30
                    WHEN payment_type = 'boleto' THEN payment_value * 0.015 + 0.50
                    WHEN payment_type = 'debit_card' THEN payment_value * 0.019 + 0.25
                    WHEN payment_type = 'voucher' THEN payment_value * 0.08
                    ELSE 0
                END
            )::numeric) / SUM(payment_value)::numeric * 100), 2)
        ELSE 0
    END as margem_percentual
FROM orderpayments
GROUP BY payment_type
ORDER BY receita_liquida DESC;
