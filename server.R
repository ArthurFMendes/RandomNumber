#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$rdm_number <- reactive({
    if (input$rerun > 0)
      sample(input$range, input$num, replace = FALSE)
    else
      ""
    
  }) 
  
})

