 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::............:role/bi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://............./')
  COMMENT = 'Optional Comment'

  desc integration PBI_Integration;

CREATE database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int, Location string, Area int,
Rainfall float, Temperature float, Soil_type string,
Irrigation string, yeilds int,Humidity float,
Crops string, price int, Season string
);

select * from PBI_Dataset;

create stage PowerBI.PBI_Data.pbi_stage
url = 's3://biproject001'
storage_integration = PBI_Integration

copy into PBI_Dataset 
from @pbi_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'


list @pbi_stage

create table agriculture as
select * from pbi_dataset;

select * from agriculture;

update agriculture
set rainfall = 1.1*rainfall;

update agriculture
set area = 0.9*area;

//Year 2004 & 2009 - Y1
//Year 2010 & 2015 - Y2
//Year 2016 & 2019 - Y3

ALTER TABLE Agriculture
add Year_Group String;

//1st update
update agriculture
set year_group = 'Y1'
where year >=2004 and year<=2009

//2nd update
update agriculture
set year_group = 'Y2'
where year >=2010 and year<=2015

//3rd Update
update agriculture
set year_group = 'Y3'
where year >=2016 and year<=2019

select * from agriculture;

//Rainfall_Groups
//Min 255 Max 4103

//rainfall 255 & 1200 - Low
//rainfall 1200 2800 - Medium
//Rainfall 2800 & 4103 - High

alter table agriculture
add rainfall_groups string;

//1st Update
update agriculture
set rainfall_groups = 'Low'
where rainfall>=255 and rainfall<1200 

//2nd update
update agriculture
set rainfall_groups = 'Medium'
where rainfall >=1200 and rainfall<2800

//3rd update
update agriculture
set rainfall_groups='High'
where rainfall >=2800

select * from agriculture;
