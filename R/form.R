#' Somewhere to enter text
#'
#' @param id The input slot that will be used to access the value.
#' @inheritParams shiny::textInput
#' @param type the style of the input
#' @param inline Should the label be inline?
#'
#' @return a tagList
#' @export
#'
#' @importFrom glue glue
#' @importFrom shiny textInput

text_input <- function(id, label, value = "", width = NULL,
                       type = c("none", "warning", "success", "error"),
                       placeholder = NULL, inline = FALSE){
  type <- match.arg(type)
  if (inline){
    class_ <- "nes-field is-inline"
  } else {
    class_ <- "nes-field"
  }
  if (type != "none"){
    type_ <- glue("nes-input is-{type}")
  } else {
    type_ <- "nes-input"
  }
  x <- textInput(inputId = id,
                 label = label, value = value,
                 width = width, placeholder = placeholder)
  x$attribs$class <- paste(class_, x$attribs$class)
  x$children[[2]]$attribs$class <- paste(type_, x$children[[2]]$attribs$class)
  x
}

