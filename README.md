# Snowflake SQL Showcase: Mastering Features with the Tasty Bytes Dataset

This repository contains a collection of SQL scripts designed to demonstrate various features and concepts within the Snowflake Data Cloud. The scripts utilize the "tasty_bytes" sample dataset, providing practical examples for learning and experimentation.

## Table of Contents - SQL Scripts

*   [Databases and Schemas.sql](./Databases%20and%20Schemas.sql)
*   [Semi-Structured Data - Code.sql](./Semi-Structured%20Data%20-%20Code.sql)
*   [Stages and Basic Ingestion.sql](./Stages%20and%20Basic%20Ingestion.sql)
*   [Stages and Basic Ingestion 2.sql](./Stages%20and%20Basic%20Ingestion%202.sql)
*   [Tables - Code.sql](./Tables%20-%20Code.sql)
*   [Time Travel - Code.sql](./Time%20Travel%20-%20Code.sql)
*   [Views - Code.sql](./Views%20-%20Code.sql)
*   [Virtual Warehouses.sql](./Virtual%20Warehouses.sql)
*   [Worksheets and a Simple Example.sql](./Worksheets%20and%20a%20Simple%20Example.sql)
*   **Module 1**
    *   [question 1.1.sql](./Module%201/question%201.1.sql)
    *   [question 1.2.sql](./Module%201/question%201.2.sql)
    *   [question 2.1.sql](./Module%201/question%202.1.sql)
    *   [question 2.2.sql](./Module%201/question%202.2.sql)
    *   [question 3.1.sql](./Module%201/question%203.1.sql)
    *   [question 3.3.sql](./Module%201/question%203.3.sql)

## Repository Structure

The repository is organized as follows:

*   **Root Directory:** Contains standalone SQL scripts, each focusing on a specific Snowflake concept or feature. Examples include:
    *   `Databases and Schemas.sql`: Demonstrates creation and management of databases and schemas.
    *   `Stages and Basic Ingestion.sql` & `Stages and Basic Ingestion 2.sql`: Cover data loading using stages.
    *   `Tables - Code.sql`: Shows table creation and manipulation.
    *   `Time Travel - Code.sql`: Illustrates Snowflake's Time Travel capabilities.
    *   `Views - Code.sql`: Contains examples of creating and using views.
    *   `Semi-Structured Data - Code.sql`: Explores handling of semi-structured data.
    *   `Virtual Warehouses.sql`: Shows how to manage virtual warehouses.
    *   `Worksheets and a Simple Example.sql`: Provides a foundational script that includes setting up the `tasty_bytes_sample_data` database, schema, table, and loading initial data. This is a good starting point.
*   **`Module 1/` Directory:** This directory contains a series of SQL questions (e.g., `question 1.1.sql`, `question 1.2.sql`), likely part of a structured learning module or set of exercises based on the `tasty_bytes` dataset.

## How to Use These Scripts

The SQL scripts in this repository are designed to be executed within a Snowflake environment, either through the Snowflake web interface (Snowsight worksheets) or any SQL client connected to your Snowflake account.

1.  **Initial Setup:** It's recommended to start with the `Worksheets and a Simple Example.sql` script. This script contains commands to:
    *   Set the user role (e.g., `ACCOUNTADMIN`).
    *   Set the active warehouse (e.g., `COMPUTE_WH`).
    *   Create the `tasty_bytes_sample_data` database.
    *   Create the `raw_pos` schema.
    *   Define the `menu` table structure.
    *   Create a stage to access the sample data from an S3 bucket.
    *   Load data from the CSV file in the public S3 bucket into the `menu` table.
2.  **Running Other Scripts:** Once the initial setup is complete and the `tasty_bytes_sample_data.raw_pos.menu` table is populated, you can run the other SQL scripts. Each script is generally self-contained or relies on the `tasty_bytes` dataset.
3.  **Adapt and Experiment:** Feel free to modify and experiment with these scripts to deepen your understanding of Snowflake functionalities.

## Key Snowflake Features Demonstrated

This collection of scripts provides hands-on examples of several core Snowflake functionalities, including:

*   **Data Definition Language (DDL):**
    *   Creating and managing `DATABASES` and `SCHEMAS`.
    *   Defining `TABLES` with various data types.
    *   Creating `VIEWS` for simplified data access.
*   **Data Manipulation Language (DML):**
    *   Querying data using `SELECT` statements with filtering (`WHERE`), grouping (`GROUP BY`), and ordering (`ORDER BY`).
    *   Loading data into tables using the `COPY INTO` command from external stages (S3).
*   **Data Loading & Unloading:**
    *   Creating and managing `STAGES` for ingesting data.
    *   Utilizing file formats for CSV data.
*   **Scalability and Performance:**
    *   Managing `VIRTUAL WAREHOUSES` (compute resources).
*   **Data Recovery:**
    *   Understanding and using `TIME TRAVEL` to access historical data.
    *   `UNDROP` functionality for databases and schemas.
*   **Semi-Structured Data:**
    *   Working with `VARIANT` data types for flexible schema handling (demonstrated in `menu_item_health_metrics_obj` column).
*   **SQL Development:**
    *   Organizing SQL queries in worksheets.
    *   Using information schema for metadata queries.

## Prerequisites

To effectively use these scripts and replicate the examples, you will need:

1.  **A Snowflake Account:** You can sign up for a [free trial account](https://trial.snowflake.com/) if you don't have one.
2.  **Appropriate Permissions:**
    *   The `Worksheets and a Simple Example.sql` script uses the `ACCOUNTADMIN` role for initial setup (creating databases, schemas, and loading data). If you don't have `ACCOUNTADMIN` access, you may need to adjust the script or have an administrator perform these initial steps.
    *   For running queries and other operations, ensure your role has the necessary privileges on the `tasty_bytes_sample_data` database and its objects, as well as usage rights on a virtual warehouse.
3.  **A Virtual Warehouse:** The scripts assume the existence of a warehouse (e.g., `COMPUTE_WH` is used in `Worksheets and a Simple Example.sql`). Ensure you have a warehouse available and your role has `USAGE` privileges on it.
4.  **Internet Access (for initial data load):** The initial data load script (`Worksheets and a Simple Example.sql`) pulls data from a public S3 bucket. Your Snowflake environment will need to be able to access this external stage.

## Learning Objectives & Use Cases

This repository can be used for:

*   **Learning Snowflake Fundamentals:** Understand basic to intermediate Snowflake SQL syntax and object management.
*   **Hands-on Practice:** Gain practical experience with common Snowflake tasks such as data loading, querying, and administration.
*   **Preparing for Snowflake Certifications:** The scripts cover topics relevant to Snowflake certifications (e.g., SnowPro Core).
*   **Code Examples:** Serve as a quick reference for various Snowflake SQL commands and patterns.
*   **Onboarding New Users:** Help new Snowflake users get acquainted with the platform's capabilities using a real-world dataset.
*   **Demonstrating Snowflake Features:** Provide a basis for showcasing specific Snowflake features to colleagues or stakeholders.

## Contributing

While this repository primarily serves as a personal collection of learning scripts, suggestions for improvements or additional examples are welcome. Feel free to open an issue or submit a pull request if you have ideas for enhancing its value as a learning resource.

Happy Snowflaking!
