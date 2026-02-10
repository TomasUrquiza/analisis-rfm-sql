-- analisis.sql
-- Calculadora de segmentos RFM (Recency, Frequency, Monetary)

WITH Metricas_Base AS (
    SELECT 
        u.nombre,
        -- R: Días desde la última compra (asumiendo hoy = 2023-12-31)
        CAST(julianday('2023-12-31') - julianday(MAX(o.fecha)) AS INTEGER) as recencia_dias,
        -- F: Total de compras
        COUNT(o.orden_id) as frecuencia,
        -- M: Total gastado
        SUM(o.monto) as monetario
    FROM ordenes o
    JOIN usuarios u ON o.usuario_id = u.usuario_id
    GROUP BY u.nombre
)

SELECT 
    nombre,
    recencia_dias,
    frecuencia,
    monetario,
    CASE 
        WHEN recencia_dias < 30 AND frecuencia >= 3 THEN 'VIP / Leal'
        WHEN recencia_dias > 100 THEN 'En Riesgo / Perdido'
        ELSE 'Promedio'
    END as segmento_cliente
FROM Metricas_Base
ORDER BY monetario DESC;