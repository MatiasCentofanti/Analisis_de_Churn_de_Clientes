# Análisis de Churn — Telco Customer Dataset

Proyecto de análisis de abandono de clientes para una empresa de telecomunicaciones. Construí un pipeline completo desde la limpieza del CSV hasta un dashboard interactivo en Power BI, pasando por análisis exploratorio en Python y consultas SQL sobre MySQL.


## ¿Qué hace este proyecto?


ETL con Python/Pandas: limpieza y transformación del dataset original
Análisis exploratorio: 8 visualizaciones con Seaborn y Matplotlib sobre patrones de churn por contrato, antigüedad, servicio de internet, métodos de pago y perfil demográfico
MySQL: importación del CSV limpio como tabla y 6 queries analíticas que responden preguntas de negocio reales
Dashboard Power BI: segmentación interactiva por género, contrato, servicio y grupo etario

## Dashboard

![Dashboard](Analisis_de_Churn_de_Clientes/Churn_analysis.png)
```

Dataset

Telco Customer Churn — Kaggle

7.043 registros · 21 variables · incluye datos demográficos, servicios contratados, tipo de contrato, métodos de pago y si el cliente se fue o no.

Para correrlo: bajar el CSV de Kaggle y guardarlo como WA_Fn-UseC_-Telco-Customer-Churn.csv en la raíz del proyecto.


## Estructura del proyecto

```text
Churn-analysis/
│
├── WA_Fn-UseC_-Telco-Customer-Churn.csv   ← dataset original (bajar de Kaggle)
├── telco_clean.csv                         ← se genera al correr el notebook
│
├── Churn_analysis.ipynb                    ← notebook principal (limpieza + análisis)
├── Queries.sql                             ← queries analíticas sobre la tabla customers
├── Churn_analysis.png                      ← vista previa del dashboard Power BI
└── Churn_analysis.pbix                     ← dashboard Power BI
```




## Cómo correrlo

1. Instalar dependencias

bashpip install pandas numpy matplotlib seaborn

2. Ejecutar el notebook

Abrir churn_analysis.ipynb en Jupyter o VS Code y correr las celdas en orden.

El notebook limpia y transforma el dataset, genera todas las visualizaciones y exporta telco_clean.csv al final.

3. Importar el CSV limpio a MySQL


Abrir MySQL Workbench
Clic derecho en el panel izquierdo → Create Schema → nombre: telco_churn → Apply
Clic derecho sobre telco_churn → Table Data Import Wizard
Seleccionar telco_clean.csv → Next
Create new table → nombre: customers → Next → Next → Finish


4. Correr las queries SQL

Con la tabla ya cargada, abrir queries.sql en MySQL Workbench y ejecutar las que necesites.

5. Dashboard Power BI

Abrir churn_analysis.pbix en Power BI Desktop.

Si la fuente de datos no conecta automáticamente: Inicio → Transformar datos → Configuración de origen de datos y apuntar al telco_clean.csv local.


## Hallazgos principales


El tipo de contrato es el factor con mayor impacto: los clientes mes a mes tienen una tasa de churn del 42.7%, vs 11.3% en contratos anuales y 2.8% en contratos de dos años.
Fiber optic es problemático: los clientes con fibra óptica se van al 41.9%, más del doble que los de DSL (19%). Puede indicar un problema de satisfacción con ese servicio específico.
Los clientes nuevos son los más vulnerables: en el primer año la tasa de churn es la más alta. A partir de los 2 años se estabiliza.
Los mayores de 65 tienen un perfil de riesgo diferente: 41.7% de churn vs 23.6% del resto.
Electronic check concentra la mayor cantidad de bajas en términos absolutos, correlacionado con que también es el método más usado entre clientes mes a mes.


## Stack técnico

```text
| Herramienta | Uso |
|------------|-----|
| Python 3.10 | Limpieza y análisis de datos |
| Pandas / NumPy | Manipulación y transformación de datos |
| Matplotlib / Seaborn | Visualizaciones y análisis exploratorio |
| MySQL Workbench | Consultas y almacenamiento de datos |
| Power BI Desktop | Dashboard interactivo |
```
