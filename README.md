# Netflix-python-

#  Netflix Data Analysis Project

##  Project Overview
This project analyzes Netflix’s dataset containing information about all movies and TV shows available on the platform.  
The goal is to extract meaningful business insights such as:
- What types of content are most popular on Netflix?
- Which countries and genres dominate Netflix’s catalog?
- How Netflix’s content trends have evolved over the years.
- How Netflix can use data to plan future content and audience targeting.


## Dataset Details
**Dataset Name:** `netflix_titles.csv`  

The dataset contains the following key columns:
- **show_id** – Unique ID for every movie or show  
- **type** – Movie or TV Show  
- **title** – Title of the movie/show  
- **director** – Director’s name  
- **cast** – List of actors  
- **country** – Country where the movie/show was produced  
- **date_added** – Date when added to Netflix  
- **release_year** – Year of release  
- **rating** – TV rating (PG, TV-MA, etc.)  
- **duration** – Duration in minutes or seasons  
- **listed_in** – Genre/category  
- **description** – Short summary  


## Objectives
The analysis focuses on the following questions:
1. What is the ratio of Movies vs TV Shows?
2. Which genres are most popular globally?
3. Which countries produce the most Netflix content?
4. How has the trend of adding new content evolved over the years?
5. Which ratings are most common on Netflix?
6. What is the average duration of movies?
7. Which actors and directors appear most frequently?
8. What months see the highest content releases?
9. Which genres dominate the U.S. and other countries?
10. What are the overall insights and recommendations for Netflix?


## Tools & Technologies Used
- **Language:** Python  
- **Libraries:**
  - `pandas` → Data manipulation & cleaning  
  - `matplotlib` → Data visualization  
  - `seaborn` → Statistical plots  
  - `numpy` → Numerical operations   
- **IDE:** Jupyter Notebook 


## Data Cleaning & Preparation
- Removed or filled missing values for `director`, `cast`, and `country`.  
- Converted `date_added` to datetime format.  
- Extracted `year_added` and `month_added` for trend analysis.  
- Cleaned `duration` column to separate minutes and seasons.  


## Data Analysis & Insights

| Analysis | Description | Key Insight |
|-----------|--------------|--------------|
| **Movies vs TV Shows** | Counted total of each type | 70% Movies, 30% TV Shows |
| **Popular Genres** | Split genre list and counted frequency | Dramas, International Movies, Comedies |
| **Top Countries** | Grouped by `country` | USA, India, UK dominate |
| **Trend Over Time** | Count of content by `year_added` | Sharp rise after 2015, peak in 2019 |
| **Ratings Distribution** | Analyzed `rating` column | TV-MA is most common |
| **Average Movie Duration** | Converted duration to numbers | ~100 minutes average |
| **Common TV Show Seasons** | Count of duration for TV shows | Most have 1 season |
| **Monthly Additions** | Grouped by `month_added` | July–October highest |
| **Top Directors & Actors** | Counted appearances | Raúl Campos, Jay Karas, Anupam Kher among top |
| **Genre Trend Over Years** | Grouped by `release_year` and `genre` | More International & Documentary content |


## Business Insights
1. Netflix primarily focuses on **Movies**, but TV Shows are steadily increasing.  
2. **Drama and International genres** attract the most viewers.  
3. **USA, India, and UK** are Netflix’s strongest content-producing markets.  
4. **TV-MA** content dominates → Netflix targets mature audiences.  
5. Most **TV shows have only 1 season**, showing the rise of short-format storytelling.  
6. **Content release peaks during mid-year**, likely for holiday season planning.


## Visualizations
The following visualizations were created using `Matplotlib` and `Seaborn`:
- Bar charts for content types, genres, and countries  
- Line charts for yearly content addition  
- Count plots for ratings and durations  
- WordCloud visualization for genre frequency  


## Key Learnings
- Data preprocessing and cleaning are crucial before analysis.  
- Learned how to handle multi-value columns (like multiple genres).  
- Discovered real-world storytelling trends through data.  
- Enhanced visualization and storytelling skills for business presentation.


## Future Work
- Integrate **viewership or ratings data** to measure performance.  
- Build a **dashboard in Power BI or Tableau** for dynamic analysis.  
- Apply **machine learning** to predict next trending genres or countries.


## Conclusion
This project demonstrates how exploratory data analysis (EDA) can help media companies like Netflix understand global content trends, audience preferences, and business strategies.  
It highlights the power of **data-driven decision making** in the entertainment industry.

