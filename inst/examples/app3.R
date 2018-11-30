library(shiny)
library(nessy)

ui <- cartridge(
  title = "{nessy}",
  subtitle = "NES-style CSS Framework for Shiny.",
  tagList(
    container_with_title(
      title = "Form",
      text_input("one", label = "Your name",
                 type = "success",inline = TRUE, placeholder = "Enter your name here"),
      button("Normal", "Validate")
    ),
    container_with_title(
      title = "Form",
      text_input("two",label = "Your age",
                 type = "warning",inline = TRUE, placeholder = "Enter your age here"),
      button_primary("Primary", "Validate")
    ),
    container_with_title(
      title = "Form",
      text_input("three", label = "Your team",
                 type = "error",inline = TRUE, placeholder = "Enter your team here"),
      button_success("Success", "Validate")
    ),
    uiOutput("tag")

  )
)


server <- function(input, output, session) {
  observeEvent( input$Normal , {
    output$tag <- renderUI({
      container_with_title(
        "You typed:",
        tags$p(input$one)
      )
    })
  })
  observeEvent( input$Primary , {
    output$tag <- renderUI({
      container_with_title(
        "You typed:",
        tags$p(input$two)
      )
    })
  })
  observeEvent( input$Success , {
    output$tag <- renderUI({
      container_with_title(
        "You typed:",
        tags$p(input$three)
      )
    })
  })
}

shinyApp(ui, server)

