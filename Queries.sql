CREATE DATABASE telco_churn;
USE telco_churn;

-- Cantidad de clientes que permanecen y que abandonan
SELECT
    Churn,
    COUNT(*) AS Clientes
FROM customers
GROUP BY Churn;

-- Contratos con mayor cantidad de bajas
SELECT
    Contract,
    COUNT(*) AS Clientes
FROM customers
WHERE Churn='Yes'
GROUP BY Contract
ORDER BY Clientes DESC;

-- Gasto mensual promedio según estado del cliente
SELECT
    Churn,
    AVG(MonthlyCharges) AS Promedio
FROM customers
GROUP BY Churn;

-- Relación entre servicio de internet y abandono
SELECT
    InternetService,
    COUNT(*) AS Clientes
FROM customers
WHERE Churn='Yes'
GROUP BY InternetService;

-- Antigüedad promedio de los clientes
SELECT
    Churn,
    AVG(Tenure) AS Antiguedad_Promedio
FROM customers
GROUP BY Churn;

-- Métodos de pago más frecuentes entre los clientes que abandonaron
SELECT
    PaymentMethod,
    COUNT(*) AS Clientes
FROM customers
WHERE Churn='Yes'
GROUP BY PaymentMethod
ORDER BY Clientes DESC;