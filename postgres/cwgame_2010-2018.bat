SET cw_path=C:\Projects\Baseball\Database\Chadwick\
SET data_path=C:\Data\Retrosheet\

cd\
cd %data_path%\raw

%cw_path%\cwgame -f 0-83 -y 2018 2018*.EV* > %data_path%\CSVs\Postgres\2018game.csv
%cw_path%\cwgame -f 0-83 -y 2017 2017*.EV* > %data_path%\CSVs\Postgres\2017game.csv
%cw_path%\cwgame -f 0-83 -y 2016 2016*.EV* > %data_path%\CSVs\Postgres\2016game.csv
%cw_path%\cwgame -f 0-83 -y 2015 2015*.EV* > %data_path%\CSVs\Postgres\2015game.csv
%cw_path%\cwgame -f 0-83 -y 2014 2014*.EV* > %data_path%\CSVs\Postgres\2014game.csv
%cw_path%\cwgame -f 0-83 -y 2013 2013*.EV* > %data_path%\CSVs\Postgres\2013game.csv
%cw_path%\cwgame -f 0-83 -y 2012 2012*.EV* > %data_path%\CSVs\Postgres\2012game.csv
%cw_path%\cwgame -f 0-83 -y 2011 2011*.EV* > %data_path%\CSVs\Postgres\2011game.csv
%cw_path%\cwgame -f 0-83 -y 2010 2010*.EV* > %data_path%\CSVs\Postgres\2010game.csv