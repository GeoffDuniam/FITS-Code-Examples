# FITS-Code-Examples
Jupyter note books and code examples for the FITS data modelling paper, as well as an example Jupyterhub kernel to demonstrate how to configure Jupyterhub for Spark and Hive access, and how to include the sparkfits package.

Directory description and contents below

## Jupyter

This directory contains the foloowing notebooks
* SubCubeFIts notebook - this notebook walks through the process on how to extract sub cubes from the source cube which has been loaded into Parquet, how to create a new header file and then save the new FITS cube file.

## JupyterhubKernel

THis directory contains an example kernel.json file that demonstrates the configuration necessary to connect a Jupyter notebook to Spark and Hive on a YARN enabled cluster.
