# Seasonal Data Analysis using AWS, Snowflake & Power BI

## 📊 Project Overview
This project demonstrates an **end-to-end data analytics pipeline** built using **AWS S3, Snowflake, and Power BI**.  
The goal of this project is to analyze a **seasonal agriculture dataset** and generate meaningful insights related to **temperature, rainfall, humidity, crops, and location trends**.
This project includes interactive Power BI dashboards that analyze:
- Seasonal temperature trends
- Humidity variations across locations
- Rainfall and crop-based insights
- Year-wise and season-wise comparison

📌 Note: The dataset file is large, so GitHub does not render it by default.

This is a **hands-on project** completed step-by-step as part of a Udemy Data Analyst course.

---

## 🛠 Tech Stack
- AWS S3
- Snowflake (Cloud Data Warehouse)
- SQL
- Power BI
- CSV Dataset

---

## 🔁 Project Workflow (Step-by-Step)

### 1️⃣ Data Storage (AWS S3)
- Created an S3 bucket
- Uploaded seasonal agriculture CSV dataset to S3

---

### 2️⃣ Snowflake – AWS Integration
- Created **Storage Integration** in Snowflake
- Configured **IAM Role & Trust Policy**
- Created **External Stage** to connect Snowflake with AWS S3

---

### 3️⃣ Data Loading into Snowflake
- Created Database & Schema
- Designed table structure for dataset
- Loaded data from S3 to Snowflake using `COPY INTO` command

---

### 4️⃣ Data Transformation using Snowflake SQL
- Created a working table from raw dataset
- Updated numerical values (Rainfall & Area)
- Created **Year_Group** column:
  - Y1 → 2004–2009  
  - Y2 → 2010–2015  
  - Y3 → 2016–2019  

- Created **Rainfall_Groups**:
  - Low  
  - Medium  
  - High  

These transformations helped prepare the data for better analysis and visualization.

---

### 5️⃣ Data Visualization (Power BI)
- Connected Power BI with Snowflake
- Built interactive dashboards for:
  - Temperature Analysis
  - Humidity Analysis
  - Seasonal Trends
  - Location-based Insights

---

## 📈 Key Insights
- Seasonal variation in temperature and humidity
- Rainfall impact across different year groups
- Crop-wise and location-based trends
- Clear visualization of patterns using Power BI dashboards

---

## 🎯 Key Learnings
- End-to-end cloud data pipeline creation
- Hands-on experience with Snowflake SQL
- Data transformation and grouping logic
- Real-world data visualization using Power BI

---

## 📌 Project Status
✅ Completed  

---

## 📎 Note
This project is created for **learning and practice purposes** and demonstrates real-world data analytics workflow using modern cloud tools.
