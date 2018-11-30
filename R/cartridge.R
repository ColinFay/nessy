#' Create a new NES Themed Shiny App
#'
#' @param title the title of the App
#' @param subtitle Substitle of the App
#' @param ... content of the body
#' @param footer content of the footer.
#'
#' @return a tagList
#' @export
#'

#' @importFrom shiny tagList tags includeCSS h1 p

cartridge <- function(title = NULL, subtitle = NULL,..., footer = NULL){
    tagList(
      tags$head(
        tags$meta(charset="UTF-8"),
        tags$meta(name="viewport", content="width=device-width, initial-scale=1.0"),
        tags$meta("http-equiv"="X-UA-Compatible",content="ie=edge"),
        includeCSS(system.file("css/ness.css", package = "nessy")),
        includeCSS(system.file("css/style.css", package = "nessy")),
        tags$style("body{padding:2em}")
      ),
      tags$body(
        tags$header(h1(title), p(subtitle)),
        ...,
        tags$footer(class="footer", footer),
        tags$script('
        var link = document.querySelector("a.github-link");
        var octocat = document.querySelector("a.github-link > i.octocat");
        link.addEventListener("mouseover", function() {
        octocat.classList.add("animate");
        });
        link.addEventListener("mouseout", function() {
        octocat.classList.remove("animate");
                    });')
      )
    )
}
