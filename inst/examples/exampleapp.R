library(shiny)
library(nessy)

ui <- cartridge(
  title = "{nessy}",
  subtitle = "NES-style CSS Framework for Shiny.",
  footer = "{nessy}, based on NES.css",
  tagList(
    container_with_title(
      title = "Buttons",
      button("id", "Normal"),
      button_primary("id2", "Primary"),
      button_success("id3", "hit"),
      button_warning("id4", "Warning"),
      button_error("id1", "Error")
    ),
    container_with_title(
      title = "Containers",
        container_with_title(is_centered = TRUE,
          "Container.is-center",
          "Good morning. Thou hast had a good night's sleep, I hope."
        ),
        container_with_title(is_dark = TRUE,
          "Container.is-dark",
          "Good morning. Thou hast had a good night's sleep, I hope."
        ),
        container_simple(is_rounded = TRUE,
          "Good morning. Thou hast had a good night's sleep, I hope."
        ),
        container_simple(is_rounded = TRUE, is_dark = TRUE,
          "Good morning. Thou hast had a good night's sleep, I hope."
      )
    ),
    container_with_title(
      title = "Radio",
      radio_buttons("id", NULL, c("yes", "no"))
      ),
    container_with_title(
      title = "Checkbox",
      checkbox("enable", "Enable")
    ),
    container_with_title(
      title = "Form",
      text_input(id = "one", label = "Your name"),
      text_input(id = "two", label = ".input.is-success", type = "success",inline = TRUE, placeholder = "NES.css"),
      text_input(id = "three", label = ".input.is-warning", type = "warning",inline = TRUE, placeholder = "8bit.css"),
      text_input(id = "four", label = ".input.is-error", type = "error",inline = TRUE, placeholder = "awesomme.css")
    ),
    balloon_container(
      title = "Balloons",
      balloon("Hello NES.css"),
      balloon("Good morning. Thou hast had a good night's sleep, I hope.", side = "right")
    ),
    container_with_title(
      title = "Icons",
      container_with_title(
        title = "Reaction",
        heart(), heart("medium"), heart("large"),
        star(), star("medium"), star("large"),
        like(), like("medium"), like("large")
      ),
      container_with_title(
        title = "SNS",
        twitter(), twitter("medium"), twitter("large"),
        facebook(), facebook("medium"), facebook("large"),
        github(), github("medium"), github("large")
      ),
      container_with_title(
        title = "Others",
        close(), close("medium"), close("large"),
        octocat_animate()
      ),
      container_with_title(
        title = "Controllers",
        nes_logo(), nes_jp_logo(), snes_logo(),snes_jp_logo()
      )
    )
  )
)


server <- function(input, output, session) {

}

shinyApp(ui, server)

