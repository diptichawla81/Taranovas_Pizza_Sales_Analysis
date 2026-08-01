# Taranovas_Pizza_Sales_Analysis
This project focuses on analyzing pizza sales data using SQL to answer real world business questions and generate meaningful business insights. The analysis helps understand sales performance, customer ordering behavior, product popularity, revenue generation, and sales trends.


🍕 Pizza Sales Business Analysis Using SQL

Turning raw sales data into actionable business insights through SQL.



📌 Project Overview

This project explores a pizza restaurant's sales data using SQL to answer real-world business questions. By analyzing customer orders, product performance, revenue trends, and sales patterns, the project demonstrates how SQL can be used to support data-driven business decisions.

The analysis covers SQL concepts from basic queries to advanced analytical techniques, with a strong focus on solving practical business problems.

---

🎯 Project Objectives

- Analyze overall sales performance.
- Calculate key business metrics (KPIs).
- Identify top-selling pizzas and categories.
- Understand customer ordering behaviour.
- Analyze revenue trends over time.
- Compare category-wise and product-wise performance.
- Apply SQL concepts ranging from basic to advanced.
- Generate meaningful business insights from transactional data.

---

🛠 Tools & Technologies

Tool| Purpose
🐬 MySQL Workbench| Database Management
🗃 SQL| Data Analysis
📊 Microsoft Excel| Result Validation
💻 GitHub| Project Documentation & Version Control

---

📂 Dataset Information

The project uses four relational tables.

Table| Description
📋 orders| Customer order date and time
🧾 order_details| Pizza items included in each order
🍕 pizzas| Pizza size and pricing information
📚 pizza_types| Pizza names, categories, and ingredients

---

🗄 Database Schema

pizza_types
      │
      ▼
pizzas
      │
      ▼
order_details
      ▲
      │
orders

🔑 Primary Keys

Table| Primary Key
orders| order_id
order_details| order_details_id
pizzas| pizza_id
pizza_types| pizza_type_id

🔗 Relationships

- orders → order_details
- pizzas → order_details
- pizza_types → pizzas

---

📚 SQL Concepts Covered

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- CASE Statements
- Date & Time Functions
- Ranking Functions
- Percentage Calculations
- Cumulative Analysis

---

📋 Business Questions Solved

🟢 Basic Analysis

- Total number of customer orders
- Total revenue generated
- Highest-priced pizza
- Most frequently ordered pizza size
- Top 5 most ordered pizzas

🟡 Intermediate Analysis

- Quantity sold by pizza category
- Hourly order distribution
- Category-wise pizza distribution
- Average pizzas sold per day
- Top 3 pizzas by revenue

🔴 Advanced Analysis

- Revenue contribution of each pizza type
- Cumulative revenue analysis
- Top 3 revenue-generating pizzas within each category

---

📈 Key Business Insights

The analysis highlights:

- 💰 Overall revenue performance
- 🍕 Best-selling pizza varieties
- 🏆 Highest-performing pizza category
- 🕒 Peak customer ordering hours
- 📦 Most preferred pizza size
- 📊 Average daily sales
- 📈 Revenue trends over time
- ⭐ Top revenue-generating products

---

📁 Project Structure

Pizza Sales SQL Analysis
│
├── 📂 Dataset
├── 📂 SQL Scripts
├── 📂 Documentation
├── 📂 Screenshots
└── README.md

---

📸 Project Screenshots

The repository includes screenshots of:

- 🗄 Database Creation
- 📋 Table Creation
- 💻 SQL Query Execution
- 📊 Query Results
- 📈 Business Insights

---

🚀 Getting Started

1. Download the dataset.
2. Open MySQL Workbench.
3. Create the database.
4. Execute the table creation script.
5. Import the CSV files.
6. Run the SQL scripts in sequence:
   - Basic Analysis
   - Intermediate Analysis
   - Advanced Analysis

---

💼 Skills Demonstrated

- SQL Query Writing
- Relational Database Design
- Data Analysis
- Business Intelligence
- Data Aggregation
- Analytical Thinking
- Technical Documentation
- GitHub Project Management

---

🎓 Learning Outcomes

Through this project, I gained hands-on experience in:
- Designing relational databases
- Writing efficient SQL queries
- Working with multiple related tables
- Applying advanced SQL concepts
- Performing business-oriented data analysis
- Converting raw data into business insights
- Creating professional project documentation

---

🔮 Future Enhancements

- 📊 Interactive Power BI Dashboard
- ⚙ SQL Views & Stored Procedures
- 🚀 Query Performance Optimization
- 🤖 Automated Reporting
- ☁ Cloud Database Deployment

---

👨‍💻 Author

Dipti Chawla

Aspiring Data Analyst

Skills: SQL • MySQL • Microsoft Excel • Power BI • Power Query

GitHub: Add your repository link here
