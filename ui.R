shinyUI(pageWithSidebar(
  headerPanel('Iris dataset choose'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('num', 'countNum', 5)
  ),
  mainPanel(
    fluidRow(
      column(5,
             h3('iris dataset display'),
             tableOutput("view")
      ),
      column(7,
             h3('iris scatter display'),
             plotOutput('scatter')
      )
    )
  )
))
