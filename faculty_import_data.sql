LOAD DATA LOCAL INFILE 'Users/gdiaz/Documents/OneDrive/Documents/lipscomb/spring2017/pinc_data_science/sql_homework/Faculty.csv' 
INTO TABLE FACULTY
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 2 LINES
(F_ID,F_LAST,F_FIRST,F_MI,LOC_ID,F_PHONE,F_RANK,@F_SUPER,F_PIN)
SET F_SUPER = IF(@F_SUPER = '',NULL, @F_SUPER);

ALTER TABLE FACULTY
ADD FOREIGN KEY (F_SUPER)
REFERENCES FACULTY(F_ID);

SELECT * FROM FACULTY;