# Bookmark Manager

This week, you will build a web app that stores web bookmarks in a database.

## The project

You're going to build a bookmark manager.  A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User stories

Show a list of bookmarks :white_check_mark:

```
As a user
So that I can find my bookmarks 
I want to see a list of bookmarks
```

Add new bookmarks :white_check_mark:

```
As a user
So that I can store bookmarks for later
I want to add a bookmark
```

Delete bookmarks :construction:

```
As a user
So I can remove bookmarks I no longer need
I want to delete a bookmark
```

Not started specificatons:
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks


## Create a test database

- `psql` - navigate to postgreSQL
- `CREATE DATABASE "bookmark_manager";` - create a database
- `\dt` - navigate into database
- `CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));` - create a 'bookmarks' table within the database

## Create a test database

- `psql` - navigate to postgreSQL
- `CREATE DATABASE "bookmark_manager_test";` - create a test database
- `\dt` - navigate into database
- `CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));` - create a 'bookmarks' table within the test database

