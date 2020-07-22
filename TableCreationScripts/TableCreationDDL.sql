set hive.execution.engine=mr;

-- set hive up
set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
SET hive.exec.parallel=true;
SET hive.vectorized.execution.enabled=true;
SET hive.exec.max.dynamic.partitions=100000;
SET hive.exec.max.dynamic.partitions.pernode=100000;

--
-- Create the images table
--

drop table if exists sparkfits_images;

create table sparkfits_images (
spi_index int,
spi_image array<float>
)
comment 'This is the table for the Sparkfits image data'
partitioned by (spi_filename string, spi_band int)
row format delimited
    fields terminated by ','
stored as parquet;

drop table if exists sparkfits_polarised_images:

create table sparkfits_polarised_images (
spi_index int,
spi_image array<float>
)
comment 'This is the table for the Sparkfits image data'
partitioned by (spi_filename string, spi_pol int, spi_band int)
row format delimited
    fields terminated by ','
stored as parquet;

--
-- Create the Sparkfits position table
--

drop table if exists sparkfits_position_dimension;

create table sparkfits_position_dimension(
spd_index int,
spd_spectra_value float,
spd_declination float
)
comment 'This is the dimension table for the Sparkfits images table'
partitioned by (spd_filename string, spd_position_type string, spd_spectra_type string, spd_band int)
row format delimited
    fields terminated by ','
stored as parquet;

--
-- Create the separate position and spectra arrays. These will be used to search the image
-- data.
--
-- Position types will include ra and dec, galactic lat and long, etc
--

drop table if exists sparkfits_detail_arrays;

create table sparkfits_detail_arrays(
sda_detail_array array<float>
)
comment 'This is the table for the Sparkfits position arrays'
partitioned by (sda_filename string, sda_detail_type string)
row format delimited
    fields terminated by ','
stored as parquet;

drop table if exists sparkfits_fits_headers;

create table sparkfits_fits_headers(
	  sfh_index bigint, 
	  sfh_key string, 
	  sfh_value string, 
	  sfh_comment string)
comment 'This is the table for the Sparkfits header data from the souce FITS file'
partitioned by (sfh_fits_file string)
row format delimited
    fields terminated by ','
stored as parquet;

