# 📊 Agricultural Data Analysis Dashboard | Power BI + Snowflake + AWS S3

## 📌 Project Overview

This project delivers a cloud-based data analytics pipeline and Power BI dashboard for analyzing agricultural data trends. The solution uses AWS S3 for data storage, Snowflake for data warehousing and transformations, and Power BI for data visualization, enabling insights across rainfall, temperature, humidity, and crop yield metrics.

## 🛠️ Data Pipeline Workflow

* Stored the raw agricultural dataset (CSV format) in an AWS S3 bucket

* Created an IAM role to securely connect Snowflake with the S3 bucket

* Configured a Storage Integration in Snowflake to establish a secure connection to S3

* Created a Snowflake table and external stage to load data via the COPY INTO command

* Applied multiple SQL transformations:

  * Adjusted rainfall and area values

  * Created Year Groups (Y1, Y2, Y3) based on year ranges

  * Created Rainfall Groups (Low, Medium, High) based on rainfall values

* Connected Power BI directly to Snowflake for reporting

## 📊 Dashboard Features

The report is organized into four tabs, each offering multi-dimensional analysis through bar charts:

### 1️⃣ Rainfall Analysis

Average Rainfall by Year

Average Rainfall by Season

Average Rainfall by Crop Type

Average Rainfall by Location

### 2️⃣ Temperature Analysis

Average Temperature by Year

Average Temperature by Season

Average Temperature by Crop Type

Average Temperature by Location

### 3️⃣ Humidity Analysis

Average Humidity by Year

Average Humidity by Season

Average Humidity by Crop Type

Average Humidity by Location

### 4️⃣ Yield Analysis

Average Yield by Year

Average Yield by Season

Average Yield by Crop Type

Average Yield by Location

## 📦 Technologies Used

AWS S3 (Data Storage)

Snowflake (Data Warehouse, SQL Transformations)

Power BI Desktop (Data Visualization)

SQL (Data Transformation)

## 🎯 Outcomes

Built an end-to-end cloud data pipeline integrating AWS S3, Snowflake, and Power BI

Delivered an interactive agricultural analytics dashboard enabling multi-dimensional insights without using DAX or Power Query

Centralized cloud-based reporting with pre-processed, clean, structured data from Snowflake

## 📸 Screenshots

### 1️⃣ Rainfall Analysis
![image](https://github.com/user-attachments/assets/2351fee4-e477-447e-83f3-fddf04829959)

### 2️⃣ Temperature Analysis
![image](https://github.com/user-attachments/assets/e150c8ba-c3b7-4fb8-944e-c721a25cb34c)

### 3️⃣ Humidity Analysis
![image](https://github.com/user-attachments/assets/fd63ec89-6708-43f6-9e2a-fe7b3f885f59)

### 4️⃣ Yield Analysis
![image](https://github.com/user-attachments/assets/519b7f47-f25b-4454-8d10-1ebb4b2e5b08)

### Snowflake Sample Screenshot
![image](https://github.com/user-attachments/assets/2de9505f-5b56-4785-af38-2bff1dcd85e4)

## 🔗 Live Dashboard

https://app.powerbi.com/view?r=eyJrIjoiODUwOTQ1ZTUtZTc3NC00YzQ1LWEzN2QtNTAzODM4ZGQxOTVlIiwidCI6IjE0YzAyY2YxLWE4ZjYtNGI3My1iMmNjLTQ0YTM0MjE5N2FiZiJ9

## ✅ How to Use

Clone/download this repository

Open Agricultural Data Analysis.pbix in Power BI Desktop

Connect it to your Snowflake instance (or replace with your dataset)

Explore dashboard tabs interactively
