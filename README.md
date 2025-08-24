-----

# 🏥 Healthcare Analytics: Stroke Prediction & Strategy Dashboard

An end-to-end data analytics project that leverages SQL, Python, and Power BI to analyze clinical data, identify key risk factors for stroke, and present actionable insights through an interactive dashboard.

-----

## 📊 Dashboard Showcase

This project culminates in a multi-page Power BI report designed for healthcare administrators. The dashboard provides a high-level overview, a demographic deep-dive, and a summary of clinical insights with actionable recommendations. The final `.pbix` file is included in this repository.

*(Screenshots of the final dashboard are located in the `powerbi_dashboard` folder.)*

-----

## 🎯 Project Objective

The goal of this project was to simulate a real-world data analyst task for a hospital network. By analyzing a rich dataset of patient records, the objective was to:

1.  Identify the primary demographic and clinical factors that contribute to stroke risk.
2.  Use statistical methods to validate these findings.
3.  Develop a predictive model to rank the importance of these risk factors.
4.  Translate the analytical findings into a clear, interactive business intelligence dashboard with actionable recommendations for improving patient care.

-----

## 🛠️ End-to-End Workflow & Skills Demonstrated

This project covers the complete data analytics lifecycle, showcasing a wide range of technical and analytical skills.

### 1\. SQL Database Management & Analysis (PostgreSQL)

  - **Database Setup:** A local PostgreSQL server was set up to simulate a professional database environment.
  - **Data Ingestion:** The raw `healthcare-dataset-stroke-data.csv` was imported into a `patient_records` table.
  - **SQL Data Cleaning:** The `cleaned_data.sql` query was executed to filter out irrelevant data (e.g., `gender = 'Other'`, `bmi = 'N/A'`). The result of this query was exported as `stroke_data_cleaned.csv`, which serves as the foundational dataset for the Python analysis.

*(Screenshots of the SQL queries can be found in the `sql_queries` folder.)*

### 2\. Python for Deep Analysis (Jupyter Notebook)

The core analysis was conducted in the `stroke_analysis.ipynb` notebook, using `stroke_data_cleaned.csv` as the input.

  - **Data Cleaning & Preparation:** Used **Pandas** to standardize column names and prepare data for visualization and modeling. This step produced `powerbi_source_data.csv`, which contains the original, human-readable categories needed for the dashboard.
  - **Exploratory Data Analysis (EDA):** Leveraged **Matplotlib** and **Seaborn** to create visualizations like a correlation matrix, age distribution histogram, and stroke outcome counts.
  - **Statistical Hypothesis Testing:** Employed **SciPy** to conduct T-tests and Chi-Squared tests, validating the significance of key variables like age and hypertension.
  - **Predictive Modeling:** Trained an **XGBoost** model to identify and rank the most influential factors driving stroke risk, visualizing the results in a feature importance plot.

*(Screenshots of the Python analysis and generated plots can be found in the `python_outputs` folder.)*

### 3\. Power BI for Dashboarding & Storytelling

  - **Data Modeling:** Imported the `powerbi_source_data.csv` into Power BI.
  - **Interactive Visuals:** Built a multi-page dashboard with KPI cards, bar charts, scatter plots, and slicers to allow for dynamic exploration of the data.
  - **Actionable Insights:** The final page includes a summary text box that translates the complex analysis into clear, data-driven recommendations.

-----
```
## 📂 Project Structure

```

.
├── sql\_queries/                      # Screenshots of PostgreSQL queries
├── python\_outputs/                   # Images generated from the Jupyter Notebook
├── powerbi\_dashboard/                # Screenshots of the final dashboard
├── cleaned\_data.sql                  # SQL script to clean the raw data
├── healthcare-dataset-stroke-data.xlsx  # Raw dataset (from Kaggle)
├── stroke\_data\_cleaned.xlsx          # Cleaned dataset after SQL processing
├── stroke\_data\_for\_dashboard.xlsx    # Final dataset prepared for Power BI
├── powerbi\_source\_data.xlsx          # Python-prepared dataset for Power BI
├── stroke\_analysis.ipynb             # The main Python notebook for analysis
├── stroke\_analysis.pbix              # The final Power BI dashboard file
└── README.md                         # This file

```
-----

## ⚙️ How to Reproduce this Project

1.  **Set up the Database:**

      * Install PostgreSQL and pgAdmin.
      * Create a `hospital` database and a `patient_records` table.
      * Import the raw `healthcare-dataset-stroke-data.csv` (available from [this Kaggle link](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)).

2.  **Clean the Data with SQL:**

      * Run the `cleaned_data.sql` query against your database.
      * Export the result as `stroke_data_cleaned.csv`.

3.  **Run the Python Notebook:**

      * Place the `stroke_data_cleaned.csv` file in the same directory as the `stroke_analysis.ipynb` notebook.
      * Execute the notebook cells from top to bottom. This will perform the analysis and generate the `powerbi_source_data.csv` file needed for the dashboard.

4.  **View the Dashboard:**

      * Open the `stroke_analysis.pbix` file using Power BI Desktop.
      * If prompted, connect the dashboard to the `powerbi_source_data.csv` file you generated in the previous step.
