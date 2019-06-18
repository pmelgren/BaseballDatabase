SET cw_path=C:\Projects\Baseball\Database\Chadwick\
SET data_path=C:\Data\Retrosheet\

cd\
cd %data_path%\raw

%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2018 -n 2018*.EV* > %data_path%\CSVs\MySQL\2018Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2017 -n 2017*.EV* > %data_path%\CSVs\MySQL\2017Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2016 -n 2016*.EV* > %data_path%\CSVs\MySQL\2016Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2015 -n 2015*.EV* > %data_path%\CSVs\MySQL\2015Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2014 -n 2014*.EV* > %data_path%\CSVs\MySQL\2014Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2013 -n 2013*.EV* > %data_path%\CSVs\MySQL\2013Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2012 -n 2012*.EV* > %data_path%\CSVs\MySQL\2012Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2011 -n 2011*.EV* > %data_path%\CSVs\MySQL\2011Event.csv
%cw_path%\cwevent -f 0-9,12-13,16-17,29,32-34,37,40,43,47-48,96 -x 0-2,9-10,13-14,45 -y 2010 -n 2010*.EV* > %data_path%\CSVs\MySQL\2010Event.csv