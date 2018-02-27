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
 - In the _Data Structure_ tab of this pane, you can view the structure of data, including the data types of each column, heading names, etc. 
 - In the _Data Preview_ tab, you can view the actual data in a table, to ensure it has been loaded and represented accordingly. 
 - In the _Select Column Features_ tab, you can choose the columns to use as features in the analysis, as well as the type of feature that these columns represent. The options for these features are,
    1. Dimension: This indicates that the data is discrete/nominal/ordinal/non-continuous, and therefore is used tasks such as grouping data points in scatter, bar, or histogram plots.
    2. Measure: This indicates that the data is numerical, and therefore may later be selected for ordering data and as one of the axes options when plotting.
    3. Exclude: If you have columns that you wish to exclude when plotting your data, this is the option for you.

Note that while these column/variable options may be automatically filled in, there are cases (such as variables that use discrete integer values) that are mislabeled as Measure instead of Dimension. Please be aware and mindul of this.

Once the preprocessing is completed, click on the _Explore_ button on the bottom of the _Select Column Features_ tab of the _Data Processing_ pane. On clicking the _Explore_ button, different interactive visualizations with options are presented and can be accessed in the sidebar panel.

## Analysis Options
Once a dataset is uploaded, one can perform various analyses and visualizations on the data by clicking on the various menu items on the sidebar which will also be described in the sub-sections below. These plots are made with [**Plotly**](https://plot.ly/). As a result, there are various interactive functions one can perform by default when viewing a plot: You may scale a plot, zoom in/out of an area of a plot, hover over elements to receive extra text information about data points, and save the plot as an image to your personal computer. For more information, see the **Plotly** documentation.

**Note: In this section of the manual, the name Dimension will be used interchangeably with non-continuous or ordinal/nominal. Similarly, Measure and continuous will be used interchangeably.** 

### Univariate Analysis
In this menu, one can perform a univariate analysis on a single continuous or non-continuous variable. Specifically, you get a box plot indicating summary statistics of occurrences of this variable in the dataset, and a histogram showing the distribution of the variable in the dataset in terms of the number of records or data points.

### Bi-Variate Scatter Plot
In this menu, you can visualize a scatter plot of two continuous variables in your dataset. Upon making a selection of two such variables from the drop-down lists on the side, you can see a heatmap containing correlations between these two variables on the left side of the plot pane. On the right of this pane, a scatter plot of these two variables is shown.

### Bi-Variate Box Plot
In this menu, you can construct a box plot for a given Dimension (non-continuous or nominal) variable plotted against some continuous variable. 

### Bi-Variate Group Bar Plot
In this menu, you can view bar graph distributions of a non-continuous or Dimension variable, aggregated or grouped by another non-continuous variable. 

### Bi-Variate Group Histogram
In this menu, you can view histogram distributions of a continuous or discrete/non-continuous variable, aggregated or grouped by another discrete/ non-continuous variable. 

### Multi-Variate Scatter Plot
In this menu, you can view a scatter plot of two continuous variables. These data points can then be coloured and organized by selecting a specific non-continuous variable by which to group them.

### Multi-Variate Box Plot
In this menu, you can view a box plot of a non-continuous variable against some continuous variable, highlighted or coloured by selecting a specific non-continuous variable by which to group them.

### EDA
This contains more information about Exploratory Data Analysis in general.




