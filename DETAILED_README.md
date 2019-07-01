## Set up a Baseball Database

`BaseballDatabase` contains the files and instructions on how to set up your 
own baseball database.

These instructions focus specifically on setting up a local SQL database 
with Retrosheet data. If you have no experience managing an SQL database this 
will get you started writing queries to answer baseball questions while also 
demonstrating the fundamentals of bringing any data source into your 
local database.

There are many versions of SQL out there that all do basically the same thing. 
This tutorial uses PostgreSQL, but if you prefer to use MySQL, check out the 
[MySQL Tutorial](https://github.com/pmelgren/BaseballDatabase/tree/MySQL_tutorial)
branch instead. 

### Getting everything you need
In order to set up a baseball database on your local computer, you'll need to 
install [PostgreSQL](https://www.postgresql.org/), [Chadwick](http://chadwick.sourceforge.net/doc/index.html), 
and [RetroSheet](https://www.retrosheet.org/).

#### Installing PostgreSQL

1. Begin [here](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads),
and download the appropriate installer for your OS. This tutorial is based off 
version 11.4 for Windows, but other versions and operating systems should be 
similar.

2. Run the installer and navigate the installation wizard. For simplicity, I'd 
recommend using the default settings in all cases, especially if you are new to 
SQL or database management.

3. When prompted to select components to install, make sure that PgAdmin 4 is 
selected along with PostgreSQL Server. PgAdmin 4 will be your user interface 
when running queries and managing your SQL tables.

#### Downloading RetroSheet

1. Begin [here](https://www.retrosheet.org/game.htm). This tutorial will focus 
on downloading events files for 2010-2018, but you can easily download other 
years or orther types of files from the same site. Click on the link for 
2010-2018 and save the zip file.

2. Extract the zip file to a directory of your choosing. In this directory I'm 
using C:\Data\Retrosheet but it will be very easy to adapt the files in this
tutorial to work for any other directory.

3. Within your ...\RetroSheet directory, create a folder called raw and put the
data you just downloaded into this /RetroSheet/raw directory. That's it.




---
