LOAD DATA LOCAL INFILE 'Users/gdiaz/Documents/OneDrive/Documents/lipscomb/spring2017/pinc_data_science/sql_homework/location.csv' 
INTO TABLE LOCATION
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 2 LINES
(LOC_ID,BLDG_CODE,ROOM,CAPACITY);