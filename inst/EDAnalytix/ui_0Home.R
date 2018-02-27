fluidPage(
  fixedRow(
  column(12,
         align = "left",
         h1("Interactive Exploratory Data Analysis: "),
         h2("An application for exploratory data
            analysis thru Interactive Visualizations"),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>"),
         h3("About"),
         h4("This is a tool to assist with data analytics and visualizations."),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h3("Manual"),
         h4("Follow the below series of simple steps
            to utilise the tool."),
         tags$ol(
           tags$li(h4("Upload the dataset file in the selected format in the \"DataSource\" tab
                      and click on submit.")),
           tags$li(h4("On submit, you can do pre-processing of Data in the \"Data Processing\"
                      Pane on the right side.")),
           tags$li(h4("In the \"Data Strucure\" tab, you can view the strucure of data.")),
           tags$li(h4("In the \"Data Preview\" tab, you can view the actual data.")),
           tags$li(h4("In the \"Select Column Features\" tab, you can choose the feature of the
                      columns.")),
           tags$li(h4("Select Dimensions for Discrete or non continuous variables")),
           tags$li(h4("Select Measures for Continuous variables")),
           tags$li(h4("Select Exclude to exclude the variable in the EDA")),
           tags$li(h4("Once the pre-processing is completed, click on Explore button on the
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
