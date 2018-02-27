# ************************************Multi Variate Scatter Plot************************************
library(shiny)
library(shinydashboard)

# **************************Reactive Variable**************************
dataInput12 = reactive({
  if (FALSE) {
    return(NULL)
  } else  {
    comp_frac_df <- readRDS("compound_code_fractions.rds")
    return(comp_frac_df)
  }
})
# **************************Outputs**************************
output$CompoundCodeFractions = renderPlotly(
  if(is.null(dataInput12())) {
    return()
  } else {
    plot_ly(data = dataInput12(),x = ~Compound_Cde, y = ~perc*100,
            type = 'bar',color = ~Price_Range_Desc,
            text=~paste("Item:",Compound_Cde,"Percentage of Successful Quotes:",round(perc*100,2), "%"),
            hoverinfo = 'text') %>%
      layout(yaxis = list(title = 'Percentage (%)'),barmode = "stack")
  })
