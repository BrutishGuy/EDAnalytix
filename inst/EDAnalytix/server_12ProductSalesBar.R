# ************************************Multi Variate Scatter Plot************************************
library(shiny)
library(shinydashboard)

# **************************Helper Function**********************

smooth_probability <- function(x, k = 2) {
  x_new <- exp(x) / (exp(x) + exp(1 - x))
  x_new = (x + k*x_new) / (k + 1)
  return(x_new)
}

# **************************Select Inputs**************************
output$MultiProductBarSelect = renderUI({
  selectInput("MultiProductBarSelect", "Select Product",
              unique(c("GR6900600-HM061","PT0301100-T46N","BBP80B225-N962N","BVMBX0400-PR0YN","GP6500320-C380")))
})


# **************************Reactive Variable**************************
dataInput13 = reactive({
  if (is.null(input$MultiProductBarSelect)) {
    return(NULL)
  } else  {
    predictions_output <- readRDS("predictions_output.rds")
    selected_item <- predictions_output %>%
      filter(Item_Id == input$MultiProductBarSelect)
    
    selected_item$prob.1 <- smooth_probability(selected_item$prob.1)
    selected_item$prob.0 <- 1- selected_item$prob.1
    
    selected_item_bar <- selected_item %>%
      group_by(price) %>%
      summarise(prob = mean(prob.1))
    
    #p <- plot_ly(data = selected_item, x=~price, y=~prob.1,
    #             type = "box")
    
    #inputdata = subset(df, subset= (df$Student == 'a'))
    #colnames(inputdata) = c("XVar")
    return(selected_item_bar)
  }
})
# **************************Outputs**************************
output$ProductSalesBar = renderPlotly(
  if(is.null(dataInput13())) {
    return()
  } else {
    plot_ly(data = dataInput13(), x=~price, y=~prob, type = "bar") %>%
      layout(title = paste0("Probability of a Sales Win for Different Pricings"),
             xaxis = list(title = paste0("Price")), yaxis = list(title = paste0("Probability")), showlegend = FALSE)
  })
