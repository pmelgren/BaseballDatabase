SET cw_path=C:\Projects\Baseball\Database\Chadwick\
SET data_path=C:\Data\Retrosheet\

cd\
cd %data_path%\raw

%cw_path%\cwevent -f 0-96 -x 0-60 -y 2018 2018*.EV* > %data_path%\CSVs\Postgres\2018Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2017 2017*.EV* > %data_path%\CSVs\Postgres\2017Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2016 2016*.EV* > %data_path%\CSVs\Postgres\2016Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2015 2015*.EV* > %data_path%\CSVs\Postgres\2015Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2014 2014*.EV* > %data_path%\CSVs\Postgres\2014Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2013 2013*.EV* > %data_path%\CSVs\Postgres\2013Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2012 2012*.EV* > %data_path%\CSVs\Postgres\2012Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2011 2011*.EV* > %data_path%\CSVs\Postgres\2011Event.csv
%cw_path%\cwevent -f 0-96 -x 0-60 -y 2010 2010*.EV* > %data_path%\CSVs\Postgres\2010Event.csv

cd %data_path%\CSVs\Postgres
copy *Event.csv event_raw.csv
del ????Event.csv