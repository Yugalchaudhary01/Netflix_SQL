Netflix SQL Project


![Logo](https://akm-img-a-in.tosshub.com/indiatoday/images/story/202012/Netflix-New-Feature-Audio-Only_1200x768.jpeg?size=690:388)


In this project, I conducted a thorough analysis of a dataset containing information about various titles, including movies and shows. The dataset encompassed key attributes such as title names, genres, release years, IMDb scores, and more, which provided a rich foundation for exploration.

Key Steps Undertaken:

Data Cleaning:
Ensured the dataset was free from errors and inconsistencies, addressing issues related to missing data and incorrect formats.

Exploratory Data Analysis (EDA):
Analyzed the distribution of various attributes, such as the number of titles by genre and the average IMDb scores across different categories.

Generated insights into trends regarding title releases over the years and examined the relationship between IMDb scores and votes.

Trend Analysis:
Identified patterns in the dataset, such as the increase or decrease in the number of titles released over specific periods.
Analyzed the average ratings and runtimes across different genres and age certifications.

Tools Used:

Database: PostgreSQL was utilized to store and manage the dataset.

Data Analysis: SQL queries facilitated the exploration and extraction of insights from the data.

## Questions I created and Answered:

## What are the top 10 countries with the most titles produced, and how many titles do they have?
```mysql
SELECT production_countries, COUNT(*) AS title_count
FROM titles
GROUP BY production_countries
ORDER BY title_count DESC
LIMIT 10;
```

Results

![image alt](https://github.com/Yugalchaudhary01/Netflix_SQL/blob/main/Screenshot%202024-09-28%20at%204.54.52%20PM.png)






