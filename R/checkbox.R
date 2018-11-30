#' Create a NES Checkbox
#'
#' @param id The input slot that will be used to access the value.
#' @inheritParams shiny::checkboxInput
#'
#' @return a tagList
#' @export
#'
#' @importFrom shiny checkboxInput
#'
checkbox <- function(id, label, value = FALSE, width = NULL){
  x <- checkboxInput(id, label, value, width)
  x$children[[1]]$children[[1]]$children[[1]]$attribs <- c(
    class="checkbox", x$children[[1]]$children[[1]]$children[[1]]$attribs
  )
  x
}

