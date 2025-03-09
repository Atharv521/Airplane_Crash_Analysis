# ✈️ Airplane Crash Analysis

## 📌 Table of Contents
- [Project Overview](#-project-overview)
- [Dataset Generation](#-dataset-generation)
- [Key Performance Indicators (KPIs)](#-key-performance-indicators-kpis)
- [Data Visualizations](#-data-visualizations)
  - [Crash Reasons Over Time (2000 - 2025)](#-crash-reasons-over-time-2000---2025)
  - [Quarterly Trend of Fatalities & Survivors](#-quarterly-trend-of-fatalities--survivors)
  - [Most Affected Aircraft Models](#-most-affected-aircraft-models)
  - [Geographical Distribution of Airplane Crashes](#-geographical-distribution-of-airplane-crashes)
  - [Crash Location Type (Ground vs. Water)](#-crash-location-type-ground-vs-water)
- [Technologies Used](#-technologies-used)
- [How to Use This Project](#-how-to-use-this-project)
- [Disclaimer](#-disclaimer)
- [Repository Structure](#-repository-structure)
- [Acknowledgment](#-acknowledgment)

---

## 📝 Project Overview
This project provides insights into airplane crash incidents from *2000 to 2025* using a dataset generated through *SQL*. The dataset includes details such as accident dates, locations, plane types, causes, and outcomes. The goal is to explore trends in aviation accidents and provide valuable insights through data visualization in **Power BI**.

## 📊 Dataset Generation
- 🛠 *Created using SQL queries* in *PostgreSQL*.
- 📂 *Exported as a CSV file* and imported into *Power BI* for analysis.
- 🚨 *Synthetic dataset* – *not* real-world data.
- 📜 SQL scripts for *table creation and data insertion* are available in the repository.

## 🔍 Key Performance Indicators (KPIs)
The dashboard includes several key metrics derived from the dataset:
- 📌 *Total Crashes*: The total number of recorded airplane crashes.
- 💀 *Total Fatalities*: The sum of all recorded fatalities.
- 🛟 *Total Survivors*: The total number of recorded survivors.
- ⚠ *Most Common Crash Reason*: The leading cause of airplane crashes.
- 🌎 *Most Affected Location*: The location with the highest number of crashes.

## 📈 Data Visualizations
The Power BI dashboard includes various visualizations to analyze airplane crash data effectively:

### 📊 1. Crash Reasons Over Time (2000 - 2025)
   - A *comparison chart* displaying different crash reasons from *2000 to 2025*.
   - Shows the *total fatalities and survivors for each crash reason per year*.

### 📉 2. Quarterly Trend of Fatalities & Survivors
   - A *line chart* showing the *quarterly trend of total fatalities and survivors* over time.
   - Helps in identifying seasonal or periodic trends in aviation accidents.

### ✈️ 3. Most Affected Aircraft Models
   - A *bar chart* displaying the *airplane models* with the highest number of recorded crashes.

### 🗺 4. Geographical Distribution of Airplane Crashes
   - A *map visualization* showing *the locations of airplane crashes*.
   - Helps in understanding the global distribution of aviation incidents.

### 🌊 5. Crash Location Type (Ground vs. Water)
   - A *bar chart* categorizing airplane crashes based on whether they occurred *on the ground or in water*.

## 🛠 Technologies Used
- 🗄 *PostgreSQL* – Used to create the database, generate synthetic data, and execute queries.
- 📊 *Power BI* – Used for data analysis and visualization.
- 📑 *Excel* – Assisted in preliminary data structuring and conversion to CSV format.

## 🚀 How to Use This Project
1. **Clone the Repository**
   ```sh
   git clone https://github.com/Atharv521/Airplane_Crash_Analysis.git
   ```
2. **Open the SQL Script**
   - Use PostgreSQL to execute the `airplane_crash_data.sql` file to generate the dataset.
3. **Export Data as CSV**
   - After executing the SQL script, export the data as a CSV file.
4. **Load Data into Power BI**
   - Open Power BI and import the CSV file for visualization.
5. **Explore the Dashboard**
   - Use the Power BI dashboard to analyze trends, compare crash reasons, and interpret key insights.

## ⚠ Disclaimer
This dataset is *entirely synthetic, generated using SQL queries, and does **not*** represent actual aviation accidents. When executed again, different values could be generated. The purpose of this project is to demonstrate data analysis, SQL-based data generation, and visualization techniques using Power BI.

## 📁 Repository Structure

📂 Airplane-Crash-Insights  
│-- 📄 README.md (This document)  
│-- 📄 airplane_crash_data.sql (SQL script for dataset generation)  
│-- 📄 airplane_crash_data.csv (Generated dataset in CSV format)  
│-- 📂 PowerBI_Dashboard (Power BI files and reports)  

## 🙌 Acknowledgment
This project was developed as an independent data analysis exercise. The dataset was *randomly generated* and is used solely for learning and visualization purposes.
