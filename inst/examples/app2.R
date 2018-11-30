library(shiny)
library(nessy)

ui <- cartridge(
  title = "{nessy}",
  subtitle = "NES-style CSS Framework for Shiny.",
  tagList(
    container_with_title(
      title = "Buttons",
      button("Normal", "Normal"),
      button_primary("Primary", "Primary"),
      button_success("Success", "Success"),
      button_warning("Warning", "Warning"),
      button_error("Error", "Error")
    ),
      uiOutput("tag")
  )
)


server <- function(input, output, session) {
  observeEvent( input$Normal , {
    output$tag <- renderUI({
      container_with_title(
        "Result",
        octocat_animate()
      )
    })
  })

  observeEvent( input$Primary , {
    output$tag <- renderUI({
      container_with_title(
        "Result",
        nes_logo()
      )
    })
  })
  observeEvent( input$Success , {
    output$tag <- renderUI({
      container_with_title(
        "Result",
        nes_jp_logo()
      )
    })
  })
  observeEvent( input$Warning , {
    output$tag <- renderUI({
      container_with_title(
        "Result",
        snes_logo()
      )
    })
  })
  observeEvent( input$Error , {
    output$tag <- renderUI({
      container_with_title(
        "Result",
        snes_jp_logo()
      )
    })
  })
}

shinyApp(ui, server)

