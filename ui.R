library(shiny)
library(dygraphs)



shinyUI(fluidPage(
  
  titlePanel("Education"),
  
  sidebarLayout(
    sidebarPanel(
          br("test")
    ),
    mainPanel(
      dygraphOutput("dygraph1"),
      dygraphOutput("dygraph2")
    )
  )
))