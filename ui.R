
library(shiny)
library(ggplot2)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  sidebarLayout(
    sidebarPanel(
      h2("Ma Première Shiny app")
    ),
    
    mainPanel(
      h1("Voici ma question :"),
     verticalLayout( textInput("nom", "Quel est ton nom ?"),
      
      textOutput("salutation")),
      
      fluidPage(
        
        h1("Le Challenge du Curseur"),
        sliderInput("curseur1", label = "Si x est ", min = 1, max = 100, value = 30 ), 
        sliderInput("curseur2", label = "Si y est ", min = 1, max = 100, value = 5 ), 
        "alors x multiplié y est : ",
        textOutput("le_texte")
      ),
      
      fluidPage(
        selectInput("dataset", "Dataset", choices = c("economics", "faithfuld", "seals")),
        
        verbatimTextOutput("summary"),
        
        plotOutput("le_graphe")
      )
      
    )
  )
)