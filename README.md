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
into a table structure by Chadwick. The 3 files in the batch_files folder in this
repository are all you need to run to do this. 
* If you are using the same file locations as I suggested above, you can skip this 
step and jump to the next bullet point. Otherwise, you'll need to open the files with
a text editor and change the file locations at the top of each file. The first 
line of each file that begins "Set cw_path=" is where you specify the file location 
that you saved the chadwick program files to. The next line "Set data_path=" will 
specify where the raw retrosheet data is stored. 
* Once you have changed these 2 lines (if necessary) in each of the 3 files double-click
each file to run it. The calls to the Chadwick programs (beginning on line 7 of 
each file) will process the raw data and store it in a sub-folder of the data path
called CSVs. For more information on the syntax of these lines, check out the [Chadwick
documentation](http://chadwick.sourceforge.net/doc/index.html).
* Once the 3 batch files have run successfully, you should have a csv file for each
year you want data for in the CSVs folder of your data directory.

### Bring the Data into your SQL tables.
With the data transformed by Chadwick, all we need to do now is bring it into SQL.
This tutorial walks you through the traditional way to do so using SQL Bulk Insert
statements. There are a wide variety of tools which can automate much of this step,
most notably [DBT](https://www.getdbt.com/), but lucky for you, the code you need
is already in this repository, so all you need to do is to run it. 
* Open pgadmin 4, which should have been installed on your computer when you installed
PostgreSQL. There may be some setup steps to go through if you're opening it for
the first time.
* Before we bring in the data, it makes sense to have a quick discussion about how
to structure the data. I'm recommending that you create a new database for all baseball 
data (Once you get this down you're definitely going to want to bring in other data
sources). Within that database you can create different schemas for each different 
source. In this tutorial we'll be using a schema called "rs" but you can call yours
whatever you want. You can also put the "rs" schema right into the default "postgres" 
database instead of creating a separate database for baseball.
* To create a new database, look in the panel on the left under Servers > Postgres 11 > Databases (1) 
and right click on Databases(1). Select Create > Database... and create a new database
called Baseball.
* With the new database created, expand it from the panel on the right and right 
click on schemas then select Create > Schema... to create a new schema called "rs".
*Once you have this structure set up, you can run the create table and bulk insert 
scripts found in this repository. Make sure that the Baseball database is highlighted 
in the panel on the left then click on the icon that looks like a lightening bolt 
next to where it says "Browser". This opens your editor.
* From the editor, click the open icon to open your files from this repository, 
open the file create_table.sql and hit F5 to run this file.
* Finally open the file bulk_inserts.csv and run that file as well. This script does 
the heavy lifting to bring the data in from the csv's created in the previous sections.
* You can optionally use the create_look_tables.sql script to create lookup tables
that are used to clarify the meaning of a few of the columns (such as event code).

### That's It!
If everything ran successfully you're ready to use this data to write SQL querys 
and answer baseball questions! If you're unfamiliar with SQL syntax, there are a
million SQL tutorials out there, one I'd suggest is [W3 Schools](https://www.w3schools.com/sql/default.asp).
But there's no substitute for just taking on a porject and learning as you do. The
good news is you now have your own database to do exactly that! So get started!