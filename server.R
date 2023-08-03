library(shiny)

shinyServer(function(input, output) {
  
    tr <- function(text){ # translates text into current language
      sapply(text,function(s) translation[[s]][[input$language]], USE.NAMES=FALSE)
    }  
  

    output$title<-renderUI(HTML(tr("greetings")))
    
    output$distPlot <- renderPlot({

        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        hist(x, breaks = bins, col = 'darkgray', border = 'white', main=tr("greetings"))

    })

})
