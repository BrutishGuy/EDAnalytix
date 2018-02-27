# Exploratory Data Analytix (ED Analytix)
ED Analytix is an R Package built as an R Shiny application for exploratory data analysis through interactive Plotly visualizations and plots. It is a tool that
provides different interactive visualizations used in data analytics and visualization tasks.

## Install package and run the Shiny application using the below commands.
`devtools::install_github("BrutishGuy/EDAnalytix")`

`library(EDAnalytix)`

`runAnalytix()`


# Manual
To use the application, follow the series of instructions below

0. You will appear in the home menu, where these instructions are located. Click on the _Upload Dataset_ tab.
1. Here, you can upload the dataset file you wish to use: To do this, select the correct file format (options are .xlsx, .rdata, .csv), browse for the file via a Windows pop-up, select whether the file has a header row or not, and for CSV files select the delimiter option that appears. Then click on _Submit Data_.
2. On submit, you can do pre-processing of Data in the "Data Processing" Pane on the right side.
3. In the "Data Strucure" tab, you can view the strucure of data.
4. In the "Data Preview" tab, you can view the actual data.
5. In the "Select Column Features" tab, you can choose the feature of the columns.
6. Select Dimensions for Discrete or non continuous variables
7. Select Measures for Continuous variables
8. Select Exclude to exclude the variable in the EDA
9. Once the pre-processing is completed, click on Explore button on the bottom in the "Select Column Features" tab.
10. On clicking the "Explore Button", Seven different interactive visualizations with options are presented and can be accessed in the sidebar panel.
