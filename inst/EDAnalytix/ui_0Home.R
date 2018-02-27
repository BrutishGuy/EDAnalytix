fluidPage(
  fixedRow(
  column(12,
         align = "left",
         h1("Interactive Exploratory Data Analysis: "),
         h4("An application for exploratory data
            analysis through interactive Plotly visualizations"),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>"),
         h2("About"),
         h4("ED Analytix is an R Package built as an R Shiny application for exploratory data analysis through interactive Plotly visualizations and plots. It is a tool that
provides different interactive visualizations used in data analytics and visualization tasks."),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h2("Manual"),
         h4("To use the application, follow the series of instructions under the various subheadings below. You will initially appear in the _Home_ menu, where these instructions are located. 
Click on various other menu headings in the side bar to navigate through the application. For more information, click the _EDA_ menu option at the bottom of the sidebar."),
         h3("Upload Your Dataset"),
         h4("Here, you can upload the dataset file you wish to use To do this, "),
         tags$ol(
           tags$li(h4("Click on the _Data Source_ menu item,.")),
           tags$li(h4("On submit, you can do pre-processing of Data in the \"Data Processing\"
                      Pane on the right side.")),
           tags$li(h4("Select the correct file format (options are .xlsx, .rdata, .csv),")),
           tags$li(h4("Browse for the file via a Windows file selection prompt and select _Open_ in that window once you have selected your file,")),
           tags$li(h4("Select whether the file has a header row or not and, for CSV files, select the delimiter (options are comma, semicolon, and tab) that is used by using the radio button that appears, ")),
           tags$li(h4("Then click on _Submit Data_."))
         ),
         h4("Once data has been submitted, you can do preprocessing of data in the _Data Processing_ pane on the right-hand side of this window. "),
         tags$ol(   
           tags$li(h4("In the _Data Structure_ tab of this pane, you can view the structure of data, including the data types of each column, heading names, etc.")),
           tags$li(h4("In the _Data Preview_ tab, you can view the actual data in a table, to ensure it has been loaded and represented accordingly. ")),
           tags$li(h4("In the _Select Column Features_ tab, you can choose the columns to use as features in the analysis, as well as the type of feature that these columns represent. The options for these features are
    1. Dimension: This indicates that the data is discrete/nominal/ordinal/non-continuous, and therefore is used tasks such as grouping data points in scatter, bar, or histogram plots.
    2. Measure: This indicates that the data is numerical, and therefore may later be selected for ordering data and as one of the axes options when plotting.
    3. Exclude: If you have columns that you wish to exclude when plotting your data, this is the option for you.")),
           tags$li(h4("Note that while these column/variable options may be automatically filled in, there are cases (such as variables that use discrete integer values) that are mislabeled as Measure instead of Dimension. Please be aware and mindul of this. 
Once the pre-processing is completed, click on Explore button on the
                      bottom in the \"Select Column Features\" tab.")),
           tags$li(h4("On clicking the \"Explore Button\", Seven different interactive
                      visualizations with options are presented and can be accessed in the
                      sidebar panel."))
         ),
         h3("More about Exploratory Data Analysis can be viewed in the EDA Tab."),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h4("Source code for the Shiny applicaton and License Information can be found at:"),
         h4(a("https://github.com/BrutishGuy/EDAnalytix", href="https://github.com/BrutishGuy/EDAnalytix")),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h3("Contact"),
         h4("victor.gueorg@gmail.com"),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         align = "center",
         HTML(paste(icon("copyright"),"EDAnalytix")),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>")
         )
         ))
