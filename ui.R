#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Random Number Generator"),
  p("The \"Random Number Generator\" is a app that chooses random number based on your options"),
  p("-> Random numbers: the amount of numberst that you wish to generate"),
  p("-> Number of decimals: total number of decimal places for each number"),
  p("-> Range: the lenght of the list which I should pick from"),
  p("When one option are changed or when you push \"Choose\" button, the random numbers are re-generated"),
  hr(),
  
  fluidRow(
    column(3, wellPanel(
      numericInput("num", 
                   label = p("Random numbers:"), 
                   value = 1,
                   min = 1),
      hr(),
      
      sliderInput("decimals", 
                  "Number of decimals:", 
                  min = 0,
                  max = 5, 
                  value = 0),
      hr(),
      
      sliderInput("range", 
                   "Range:", 
                   min = 1,
                  max = 100,
                   value = 60),
      
      hr(),
      
      
      actionButton('rerun','Choose')
      
    )),
    column(6,
           verbatimTextOutput("rdm_number")
    )
  )
))
