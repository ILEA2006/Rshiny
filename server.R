
library(shiny)

function(input, output, session) {
  
  output$salutation <- renderText({
    paste0("Bonjour ", input$nom) # le paste0 sert a concaténer les deux chaines de character
  })


  
  output$le_texte <- renderText({ 
    x<- input$curseur1
    y<- input$curseur2
    x * y
  })
  

library(ggplot2)

  
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$le_graphe <- renderPlot({
    plot(dataset())
  }, res = 96)
  
}

