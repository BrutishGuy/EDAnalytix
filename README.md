# Exploratory Data Analytix (ED Analytix)
ED Analytix is an R Package built as an R Shiny application for exploratory data analysis through interactive Plotly visualizations and plots. It is a tool that
provides different interactive visualizations used in data analytics and visualization tasks.

## Install package and run the Shiny application using the below commands.
`devtools::install_github("BrutishGuy/EDAnalytix")`

`library(EDAnalytix)`

`runAnalytix()`


# Manual
To use the application, follow the series of instructions under the various subheadings below. You will initially appear in the _Home_ menu, where these instructions are located. 
Click on various other menu headings in the side bar to navigate through the application. For more information, click the _EDA_ menu option at the bottom of the sidebar.

## Upload Your Dataset

Here, you can upload the dataset file you wish to use To do this, 
1. Click on the _Data Source_ menu item,
2. Select the correct file format (options are .xlsx, .rdata, .csv),
3. Browse for the file via a Windows file selection prompt and select _Open_ in that window once you have selected your file,
4. Select whether the file has a header row or not and, for CSV files, select the delimiter (options are comma, semicolon, and tab) that is used by using the radio button that appears, 
5. Then click on _Submit Data_.

Once data has been submitted, you can do preprocessing of data in the _Data Processing_ pane on the right-hand side of this window. 
-In the _Data Structure_ tab of this pane, you can view the structure of data, including the data types of each column, heading names, etc. 
-In the _Data Preview_ tab, you can view the actual data in a table, to ensure it has been loaded and represented accordingly. 
-In the _Select Column Features" tab, you can choose the columns to use as features in the analysis, as well as the type of feature that these columns represent.
	The options for these features are,
	1. Dimension: This indicates that the data is discrete/nominal/ordinal/non-continuous, and therefore is used tasks such as grouping data points in scatter, bar, or histogram plots.
	2. Measure: This indicates that the data is numerical, and therefore may later be selected for ordering data and as one of the axes options when plotting.
	3. Exclude: If you have columns that you wish to exclude when plotting your data, this is the option for you.

Note that while these options may be automatically filled in, there are cases (such as variables that use discrete integer values) that are mislabeled as Measure instead of Dimension. Please be aware and mindul of this.
Once the preprocessing is completed, click on the _Explore_ button on the bottom of the _Select Column Features_ tab of the _Data Processing_ pane.
On clicking the "Explore Button", different interactive visualizations with options are presented and can be accessed in the sidebar panel.

## Analysis Options