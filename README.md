# 📊 SQL RFM Analysis: Customer Segmentation

Este proyecto implementa una lógica de negocio para segmentar usuarios basada en el modelo **Recency, Frequency, Monetary (RFM)**.

## 🧮 El Modelo Matemático

El script clasifica a los usuarios evaluando tres variables estocásticas:

$$\text{Score}_u = f(R_u, F_u, M_u)$$

* **Recency ($R$):** Tiempo $\Delta t$ desde la última transacción.
* **Frequency ($F$):** Cardinalidad del conjunto de órdenes $|O_u|$.
* **Monetary ($M$):** Sumatoria del valor económico $\sum v_i$.

## 🛠 Tecnologías

* **SQL (Dialecto SQLite):** Lógica declarativa.
* **CTEs (Common Table Expressions):** Para modularizar la consulta.
* **Funciones de Agregación:** `COUNT`, `SUM`, `MAX`.

## 🚀 Cómo usar

1.  Clonar el repositorio.
2.  Ejecutar `schema.sql` para construir las tablas.
3.  Ejecutar `seeds.sql` para poblar datos de prueba.
4.  Correr `analisis.sql` para ver la segmentación.

---
*Hecho por Tomás Urquiza*
