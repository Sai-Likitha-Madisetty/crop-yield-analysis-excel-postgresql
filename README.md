# 🌾 Crop Yield Analysis using Advanced Excel & PostgreSQL

## 📌 Project Overview

Agriculture plays a vital role in food security and economic development. This project analyzes crop production data to understand the factors influencing agricultural productivity across different crops, states, seasons, and years.

Using **Advanced Excel** and **PostgreSQL**, the project transforms raw agricultural data into meaningful insights that can support farmers, policymakers, and agricultural planners in making data-driven decisions.

---

## 🎯 Objectives

* ✅ Clean and prepare agricultural data
* 📊 Perform Exploratory Data Analysis (EDA)
* 📈 Create visual reports and dashboards
* 🌦 Analyze rainfall and fertilizer efficiency
* 🗃 Perform SQL-based analysis using PostgreSQL
* 🌾 Identify high-performing crops and regions
* 💡 Generate actionable business insights

---

## 🛠 Tools Used

* 📗 Advanced Excel
* 🐘 PostgreSQL

---

## 📂 Dataset Information

| Metric           | Value     |
| ---------------- | --------- |
| 📑 Total Records | 19,689    |
| 🌱 Unique Crops  | 55        |
| 🗺 States        | 30        |
| 📅 Time Period   | 1997–2020 |
| 📊 Total Columns | 13        |

### Dataset Features

* Crop
* Crop Year
* Season
* State
* Area
* Production
* Annual Rainfall
* Fertilizer
* Pesticide
* Yield
* Average Temperature
* Maximum Temperature
* Minimum Temperature

---

## 🧹 Data Cleaning

✔ No Missing Values

✔ No Duplicate Records

✔ Data Types Validated

⚠ Data Leakage Identified

Yield showed a strong relationship with:

Production ÷ Area = Yield

This relationship should be handled carefully during predictive modeling.

---

## 📈 Exploratory Data Analysis

### 🌾 Top Production Crops

* Coconut
* Sugarcane
* Rice
* Wheat
* Potato

### 🏆 Top Yield Crops

* Coconut
* Sugarcane
* Banana
* Tapioca
* Potato

### 🌍 Top Performing States

* Goa
* Puducherry
* Kerala
* West Bengal
* Tamil Nadu

### 📅 Seasonal Insight

Whole Year cultivation recorded the highest average yield.

---

## 🐘 PostgreSQL Analysis

SQL queries performed:

* 📊 Top Crops by Production
* 📈 Top Crops by Average Yield
* 🌍 Top States by Average Yield
* 🌦 States with Highest Rainfall
* 💊 Fertilizer Efficiency Analysis
* 📅 Year-wise Yield Trends
* 🌾 Yield by Season
* 🚜 Production per Unit Area

---

## 🔍 Key Findings

🏆 Coconut achieved the highest production and yield.

🌱 Sugarcane and Banana were among the most productive crops.

🌧 High rainfall did not always result in high productivity.

📍 Telangana recorded the highest Coconut yield.

💊 Puducherry demonstrated the highest fertilizer efficiency.

🌾 Kharif and Rabi seasons accounted for over 70% of cultivation records.

⭐ Crop type emerged as the strongest factor affecting productivity.

---

## 💼 Business Insights

* 📌 Crop selection impacts productivity more than rainfall alone.
* 📌 Yield efficiency should be prioritized over production volume.
* 📌 High-performing crop-state combinations can improve outcomes.
* 📌 Resource efficiency metrics support better decision-making.

---

## 🚀 Recommendations

* 🌱 Adopt crop-specific cultivation strategies.
* 📍 Study high-performing Coconut-producing regions.
* 📈 Focus on yield efficiency and land productivity.
* 🤖 Develop machine learning-based prediction models.
* 📊 Build interactive Power BI dashboards.

---

## 🔮 Future Scope

* 🤖 Machine Learning-based Crop Yield Prediction
* 🌦 Rainfall Forecasting Models
* 💊 Fertilizer Optimization Systems
* 🌾 Crop Recommendation Systems
* 📊 Power BI & Tableau Dashboards
* 📡 Real-Time Agricultural Monitoring Systems

---

## 📁 Repository Structure

```
Crop-Yield-Analysis
│
├── Dataset/
│      Crop_Yield_Data.xlsx
│
├── SQL/
│      crop_yield_queries.sql
│
├── Presentation/
│      Crop-Yield-Analysis.pptx
│
├── Report/
│      Week3_Project_Report.pdf
│
├── Images/
│      Dashboard Screenshots
│
└── README.md
```

---

## 👩‍💻 Author

**Sai Likitha Madisetty**

Data Analytics Project – Week 3

---

⭐ If you found this project useful, feel free to give it a star!
