# Enterprise Power BI Dashboard for Qatar Sales Analysis

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE) [![Python](https://img.shields.io/badge/python-3.10%2B-green)](https://www.python.org/) [![Power BI](https://img.shields.io/badge/Power%20BI-Report-yellow)](https://powerbi.microsoft.com/)

---

## 🚀 Objective

Showcase enterprise-grade Power BI development aligned with modern analytics requirements, with a focus on Qatar’s unique climate and sales dynamics.

## 📊 Overview

This repository contains a production-ready Power BI solution that integrates data from:

* **Dockerized SQL Server** for transactional sales data
* **CSV/Excel files** for targets and inventory
* **OpenWeatherMap API** for weather insights

You will find end-to-end implementation including data ingestion, transformation, visualization, and security simulation.

## 🎯 Key Capabilities

| Category             | Description                                                                              |
| -------------------- | ---------------------------------------------------------------------------------------- |
| **Data Integration** | SQL Server (Docker), CSV/Excel, REST API (OpenWeatherMap)                                |
| **Visualization**    | Power BI Desktop report with interactive maps, line charts, matrices, and scatter plots  |
| **Analytics**        | Custom DAX measures |
| **Security**         | Local Role-Level Security (RLS) simulation via bookmarks and slicers for Qatar regions   |
| **Validation**       | Automated reconciliation reports comparing actual vs. target sales                       |


## 🗂️ Project Structure

```
powerbi-enterprise-dashboard/
├── data/
│   ├── sales.csv               # 10,000+ rows of sample sales records
│   ├── shared_sources/
│   │   ├── sales_targets.csv   # Monthly sales targets per region
│   │   └── inventory.xlsx      # Inventory levels for turnover calculations
│   └── api/
│       └── doha_weather.json   # Generated weather data for Doha
├── sql-scripts/
│   ├── 01_create_tables.sql    # Schema definitions
│   └── 02_load_sales.sql       # Sample data inserts
├── docker/
│   └── docker-compose.yml      # SQL Server setup
├── docs/
│   ├── rls.md                  # RLS 
├── WeatherData.m               # Script to fetch & prepare weather data
├── SalesDashboard.pbix         # Power BI Desktop report file
└── README.md                   # Project documentation
```

## 🔧 Prerequisites

* **Power BI Desktop** (free) – for authoring and viewing the dashboard
* **Docker Desktop** – to spin up a local SQL Server instance
* **Python 3.10+** – for weather data retrieval and preprocessing

## 🛠️ Setup & Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/rgb101593/powerbi-enterprise-dashboard.git
   cd powerbi-enterprise-dashboard
   ```

2. **Launch SQL Server**:

   ```bash
   docker-compose up -d
   ```

3. **Initialize database**:

   ```bash
   docker exec -i sqlserver_container_name \  
     /opt/mssql-tools/bin/sqlcmd -U SA -P <YourStrong!Passw0rd> \  
     -i sql-scripts/01_create_tables.sql
   docker exec -i sqlserver_container_name \  
     /opt/mssql-tools/bin/sqlcmd -U SA -P <YourStrong!Passw0rd> \  
     -i sql-scripts/02_load_sales.sql
   ```

4. **Fetch weather data**:

   ```bash
   python generate_weather_json.py --api_key YOUR_OPENWEATHERMAP_API_KEY
   ```

5. **Open Power BI report**:

   * Launch **SalesDashboard.pbix** in Power BI Desktop
   * Update the **WeatherAPIKey** parameter under **Transform Data > Parameters**
   * Refresh all data connections

## 📈 Core Visuals & KPIs

### Visuals

* **Map**: Interactive sales heatmap by Qatar city (Doha, Al Rayyan, etc.)
* **Line Chart**: Correlation between monthly sales and temperature/humidity
* **Matrix**: Region-wise sales vs. targets
* **Scatter Plot**: Extreme heat (≥ 40°C) vs. sales performance


## 📝 Documentation

* **Architecture Diagram**: Located in `docs/architecture.drawio`
* **ETL Flow**: SQL → Power Query → Power BI → GitHub
* **SOP & Governance**: See `docs/sop.md` for:

  * Data refresh workflows
  * API key rotation
  * RLS role maintenance



## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

*Developed  by [rgb101593](https://github.com/rgb101593)*
