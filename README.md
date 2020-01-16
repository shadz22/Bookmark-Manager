# Bookmark-Manager
This is the Makers Academy week 4 afternoon challenge.

### User Story 1

```

As a user 
so that I can access the websites I regularly use faster,
I need to see a list of bookmarks.

This is a rough copy of the Domain model for the above:
![1st user story Domain model](https://github.com/shadz22/Bookmark-Manager/blob/master/Images/User%20Story%201%20-%20Domain%20model.jpg)

```

### User Story 2

```
As a user 
so that I can save a website to revisit
I'd like to add the website address and name to my bookmarks

```

## Database Setup
In order to save the bookmarks, we need to store them in a database. To do this we need to create one. See the steps below:

1. Connect to psql
```
$> psql
```
2. Create the database using the following psql command: 
```
admin=# CREATE DATABASE bookmark_manager;
```
3. Connect to the database using the following pqsl command 
```
admin=# \c bookmark_manager;
```
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

## Setting up a test database

We will need to have different databases for each environment. To set up a test database, we need to run `psql` and create a database:
```
$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
```
We now need to connect to this new database so we can create a new table:
```
admin=# \c bookmark_manager_test;
```
We use the SQL query saved in `db/migrations/01_create_bookmarks_table.sql` to create a bookmarks table:
```
bookmark_manager_test=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

things to add:

Show a list of bookmarks 
Add new bookmarks 
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users manage their bookmarks
