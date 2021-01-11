library(shiny)
library(plotly)
shinyUI(
  pageWithSidebar( 
    headerPanel("MTcars 3D plot"),
    sidebarPanel(
      selectInput("xvariable",
                  "Variable on the x axis:",
                  c("Miles/Gallon" = "mpg",
                    "Displacement" = "disp",
                    "Gross horsepower" = "hp",
                    "Rear axle ratio" = "drat",
                    "Weight (1000 lbs)" = "wt",
                    "1/4 mile time" = "qsec")),
      selectInput("yvariable",
                  "Variable on the y axis:",
                  c("Displacement" = "disp",
                    "Miles/Gallon" = "mpg",
                    "Gross horsepower" = "hp",
                    "Rear axle ratio" = "drat",
                    "Weight (1000 lbs)" = "wt",
                    "1/4 mile time" = "qsec")),
      selectInput("zvariable",
                  "Variable on the z axis:",
                  c("Gross horsepower" = "hp",
                    "Miles/Gallon" = "mpg",
                    "Displacement" = "disp",
                    "Rear axle ratio" = "drat",
                    "Weight (1000 lbs)" = "wt",
                    "1/4 mile time" = "qsec")),
      selectInput("colorvariable",
                  "Color variable:",
                  c("Number of carburetors" = "carb",
                    "Miles/Gallon" = "mpg",
                    "Number of cylinders" = "cyl",
                    "Displacement" = "disp",
                    "Gross horsepower" = "hp",
                    "Rear axle ratio" = "drat",
                    "Weight (1000 lbs)" = "wt",
                    "1/4 mile time" = "qsec",
                    "Engine" = "vs",
                    "Transmission" = "am",
                    "Number of forward gears" = "gear"),
                  selected = "Transmission")),
  mainPanel(
      plotlyOutput("Plot", height = "400px", width = "600px")
           )
))

