palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

shinyServer(function(input, output) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    head(iris[,c(input$xcol,input$ycol)],n = input$num)
  })
  
  output$view <- renderTable({
    selectedData()
  })
  
  output$scatter <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = "red",
         pch = 20, cex = 3)
  })
  
})
