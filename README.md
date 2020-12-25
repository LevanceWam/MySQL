# MySQL
> A quick overview of MySQL and how to use it.

## What is MySQL:

A database is a collection of data stored in a format that can easily be accessed. In order to manage our database what is a software application called Database management system or, DBMS.

We connect to a DBMS and give it instructions for quiring or modifying data. DBMS will execute the instructions and send  results back. 

We have several database systems out there, and these are classified into two categories, relational and non-relational they are also called NoSQL. In relational databases, we store data in tables that are linked to each other using relationships. That is why we call these databases relational databases, each table stores data about a specific type of object, like a customer product, order and so on. SQL or SQUEL (Structured Query Language) is the language that we use to work on these relational database management systems.

it looks like this:

```SQL
SELECT *
FROM products
WHERE catergory = 'food'
ORDER BY price
```

We use SQL to query or modify our data. Here we're going to look at everything there is to know about this powerful language. 

There are many different relational database management systems that we can use some of the most popular include:

* MySQL
* SQL Server by Mircosoft
* Oracle

Each of the databases have their own flavor of SQL. All of the implementations are similar and are based on standard SQL specification. Most of the SQL code that is going to be here can be applied to any DBMS. In this Repo I am going to be using MySQL.

**Quick Notes:**

Relational Database and Non-Relational Databases do not understand eachother and wre not the same. NoSQL database do not use tables or relationships. They have their own query langauge.

Different people use different pronounications 
for SQL. *SQL* or *SQUEL*, it really goes off of preferance but a quick lesson might help.

**SQUEL** was originally developed at IDM in the 
