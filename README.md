# Bookmark-Manager
This is the Makers Academy week 4 afternoon challenge.

### User Story 1

```

As a user 
so that I can acesss the websites I regurarly use faster,
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