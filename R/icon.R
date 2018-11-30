#' Various 8 bit icons
#'
#' @param size Wether to display in small, medium or large
#'
#' @return a taglist
#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue


heart <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon heart")
  } else {
    tags$i(class= glue::glue("icon heart is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
#'
star <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon star")
  } else {
    tags$i(class= glue::glue("icon star is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
like <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon like")
  } else {
    tags$i(class= glue::glue("icon like is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
twitter <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon twitter")
  } else {
    tags$i(class= glue::glue("icon twitter is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
facebook <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon facebook")
  } else {
    tags$i(class= glue::glue("icon facebook is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
github <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon github")
  } else {
    tags$i(class= glue::glue("icon github is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
#' @importFrom glue glue
close <- function( size = c("small", "medium", "large")){
  size <- match.arg(size)
  if (size == "small"){
    tags$i(class="icon close")
  } else {
    tags$i(class= glue::glue("icon close is-{size}"))
  }
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
octocat_animate <- function(){
  tags$i(class="octocat animate")
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
nes_logo <- function(){
  tags$i(class="nes-logo")
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
nes_jp_logo <- function(){
  tags$i(class="nes-jp-logo")
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
snes_logo <- function(){
  tags$i(class="snes-logo")
}

#' @export
#' @rdname icons
#' @importFrom shiny tags
snes_jp_logo <- function(){
  tags$i(class="snes-jp-logo")
}
