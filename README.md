# FITS-Code-Examples
Jupyter note books and code examples for the FITS data modelling paper, as well as an example Jupyterhub kernel to demonstrate how to configure Jupyterhub for Spark and Hive access, and how to include the sparkfits package.

Directory description and contents below

## Jupyter

This directory contains the following notebooks
* SubCubeFIts notebook - this notebook walks through the process on how to extract sub cubes from the source cube which has been loaded into Parquet, how to create a new header file and then save the new FITS cube file.

## JupyterhubKernel

This directory contains an example kernel.json file that demonstrates the configuration necessary to connect a Jupyter notebook to Spark and Hive on a YARN enabled cluster.

## ETL

This directory contains the notebook and batch code used to load the FITS data into the Parquet tables.

## ParquetTableCreation

This directory contains the SQL DDL statements used to create the tables used to store the extracted FITS data.

## Acknowledgements

We greatefully acknowledge the assistance from Mr. Julien Peleton for the Sparkfits package, and his assistance during the development of this model and data loading procedures.
