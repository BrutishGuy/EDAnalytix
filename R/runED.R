#' Run EDAnalytix Shiny Application to perform Interactive Exploratory Data Analysis in the package IEDA
#'
#' Exploratory Data Analysis is one of the key components of a data science project.
#' This is a simple tool which provides different interactive visualizations used in data analysis and data visualizations.
#' @keywords EDAnalytix, EDA, Exploratory Data Analysis
#' @export
#' @examples
#' runED()
runED <- function() {
  appDir <- system.file("EDAnalytix", package = "EDAnalytix")
  print(appDir)
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `EDAnalytix`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
