
library(shiny)

# Define UI for application that predicts a car's MPG

shinyUI(fluidPage(

    # Application title
    titlePanel("Prediction of a Car's Miles per Gallon (MPG)"),

    # Sidebar with select and slider inputs
    sidebarLayout(
        sidebarPanel(
            p("Please fill in your Car's Specifications"),
            selectInput("am", "Transmission: 0 = Automatic & 1 = Manual", 
                        choices = mtcars$am),
            selectInput("cyl", "Number of Cylinders", 
                        choices = mtcars$cyl),
            sliderInput("wt", "Weight in 1,000 lbs", 
                        min = 1, max = 6, step = 0.5, value = 3),
            sliderInput("hp", "Gross Horsepower", 
                        min = 50, max = 350, step = 10, value = 125)
            ),

        # Show the prediction
        mainPanel(
            h3("Your Car's Expected MPG is as follows:"),
            h4(textOutput("mpgPred")),
            p("Note: This prediction is based on a multivariate linear regression done on the mtcars dataset.")
            )
    )
))
