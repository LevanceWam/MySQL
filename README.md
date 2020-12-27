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

**SQUEL** was originally developed at IBM in the 70's and back then it was called intially called SEQUEL. This was short for Structured English Query Language, but the acronym was changed to SQL because SEQUEL was a trademark to a airport company.

---

## Installation on Mac

1. First we are going to head to [MySQL.com](https://www.mysql.com/).
2. Navigate to the downloads and find MySQL Community downloads.
3. Click on MySQL Community Server.
4. Navigate until we find the releases for Mac OS.
5. Download the first item it should be a dmg.archive.
6. Click 'No thanks start my download'.
7. Follow the download prompts.
8. During the download process we are going to be asked to set up a password for the admin user.


Next we are going to need a graphical tool to connect to the server and manage the databases.

1. Back in downloads and MySQL Community downloads.
2. Navigate to MySQL Workbench this is the tool we are going to need.
3. Repeat steps 3 to 7 from the first set of directions.
4. Because this is downloaded from the internet we need to let our mac know that we trust it.


When we open up the app we should see a connection and if we don't we need to create it.

1. On the landing page there should be a plus icon click it.
2. On the next page give the connection a name.
3. The standard TCP/IP connection that is set by default is the one we are going to use.
4. The Hostname is the address of the machine
5. The port is the default port that we use and the username is the name of the admin.
6. The password is the one we set during installation.
7. Test the connection.

**Important:**

If we so happen to forget the password for our root and we can't get in, or set it a longtime ago. Follow this link to reset MySQL password: [Watch this video](https://www.youtube.com/watch?v=OEXPj8iYP3c)