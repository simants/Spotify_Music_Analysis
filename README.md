# Spotify Music Data ETL

This repository demonstrates an end-to-end ETL (Extract, Transform, Load) process for Spotify music data. The process involves extracting data from CSV files, performing data cleaning and curation using the Pandas library, and storing the transformed data in a PostgreSQL database using Docker.

## Prerequisites

Before you begin, ensure you have the necessary tools and software installed:

- [Python](https://www.python.org/downloads/)
- [Docker](https://www.docker.com/get-started)
- [PostgreSQL](https://www.postgresql.org/) image installed

## Files in the Repository

- `docker-compose.yml`: Configuration for connecting to a PostgreSQL Docker container.
- `etl_music_data.ipynb`: Jupyter Notebook containing the Python code for the ETL process.
- `music_schema.sql`: SQL file defining the schema for storing the transformed data in PostgreSQL.
- `trackcheck.csv`: Transformed data extracted from CSV files and cleaned using the ETL process.

## ETL Process Overview

1. **Data Extraction**: Data is extracted from CSV files containing Spotify music data.

2. **Data Transformation and Cleaning**: The Pandas library is used for data cleaning, curation, and transformation. Anomalies are removed, and the data is prepared for storage.

3. **Data Loading**: Transformed data is loaded into a PostgreSQL database using Docker. The `docker-compose.yml` file defines database connection and parameters.

## Running the ETL Process

1. Start the PostgreSQL container using Docker:
```docker-compose up -d```


2. Open the `etl_music_data.ipynb` notebook and execute each cell sequentially. This notebook implements the ETL process, including data extraction, transformation, and loading.

3. Verify Table Creation: After running the notebook, you can use the following commands in the terminal to connect to the PostgreSQL database container and verify table creation:

```docker exec -it <container_name> psql -U postgres```
```\c music_db```
```\dt```



## Learning Experience

This project offers a hands-on learning experience in implementing an end-to-end ETL process. You'll work with actual music data, utilize Pandas for data cleansing and transformation, and leverage Docker for containerized data storage. By following the notebook and examining the code, you'll gain insights into building ETL pipelines and effectively using libraries for data manipulation and database interactions.


