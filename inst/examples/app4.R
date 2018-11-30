library(shiny)
library(nessy)

ui <- cartridge(
  title = "{nessy}",
  tagList(
    radio_buttons("is", "Choose a dataset", choices = c("iris", "mtcars", "airquality")),
    tags$br(),
    dataTableOutput("dt")
  )
)


server <- function(input, output, session) {
  observeEvent( input$is , {
    output$dt <- renderDataTable({
      get(input$is)
    })
  })
}

shinyApp(ui, server)

