# BaseballDatabase

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
* **PostgreSQL** Download PostgreSQL [here](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads),
Go with the default options whereever possible and make sure you select PgAdmin 
4 when prompted to select components. 
* **RetroSheet Data** Download RetroSheet data [here](https://www.retrosheet.org/game.htm). This 
tutorial uses the event files from 2010-2018 but you should be able to adapt the 
code to work for any years and type of file. When you extract the zip file, put 
the data in a folder called Retrosheet and a subfolder called raw. My full 
directory is C:\Data\RetroSheet\raw.
* **Chadwick** Install Chadwick Software [here](https://github.com/chadwickbureau/chadwick/releases).
Download chadwick-[...]-win.zip and extract to any folder you like. (I'm using 
C:\projects\baseball\database\chadwick). Once you have extracted the zip folder
you are ready to use the chadwick tools, no installation is required.

### Transform the Raw Data
Before the RetroSheet data can be inserted into SQL, it needs to be transformed 
into a table structure by Chadwick. 