library(shiny)
#Packages
library(plotly)
#cyl, vs, am, gear and carb conversion in factor
mtcars[,c(2,8,9,10,11)] <- lapply(mtcars[,c(2,8,9,10,11)], 
                                  function(x) as.factor(as.character(x)))
shinyServer( function(input, output) {
  output$Plot <- renderPlotly({
    plot_ly(data = mtcars, 
            x = mtcars[,input$xvariable],
            y = mtcars[,input$yvariable],
            z = mtcars[,input$zvariable],
            color = mtcars[,input$colorvariable],
            type = "scatter3d", mode = "markers") %>% 
      layout(
        title = paste("3d scatter plot colored by", input$colorvariable),
        scene = list(
          xaxis = list(title = input$xvariable),
          yaxis = list(title = input$yvariable),
          zaxis = list(title = input$zvariable)
        ))
  })
} )


