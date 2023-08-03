library(shiny)

rm(list=ls())

source("functions.R")

shinyUI(fluidPage(

    titlePanel(uiOutput('title')),

    sidebarLayout(
        sidebarPanel(
          
          radioButtons(inputId = "language", label = "",
                       choices = c("English" = "en", "Français" = "fr"),
                       selected = "en"),
          
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        mainPanel(
            plotOutput("distPlot")
        )
    )
))
