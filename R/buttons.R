#' @importFrom shiny tags
make_button <- function(id, class, ...){
  tags$button(
    id = id,
    type = "button",
    class = class,
    ...
  )
}

#' Create a button
#'
#' @param id the idea of the button
#' @param ... the content of the button
#'
#' @return a taglist
#' @export
#' @rdname button

button <- function(id, ...){
  make_button(
    id = id,
    class = "nes-btn action-button",
    ...
  )
}

#' @export
#' @rdname button
button_primary <- function(id, ...){
  make_button(
    id = id,
    class = "nes-btn is-primary action-button",
    ...
  )
}

#' @export
#' @rdname button
button_success <- function(id, ...){
  make_button(
    id = id,
    class = "nes-btn is-success action-button",
    ...
  )
}

#' @export
#' @rdname button
button_warning <- function(id, ...){
  make_button(
    id = id,
    class = "nes-btn is-warning action-button",
    ...
  )
}
#' @export
#' @rdname button
button_error <- function(id, ...){
  make_button(
    id = id,
    class = "nes-btn is-error action-button",
    ...
  )
}

#' A Nessy Radio button
#'
#' @inheritParams shiny::radioButtons
#' @param id The input slot that will be used to access the value.
#'
#' @return a tagList
#' @export
#'
#' @importFrom shiny radioButtons

radio_buttons <- function(id, label, choices = NULL,
                          selected = NULL, inline = FALSE,
                          width = NULL, choiceNames = NULL, choiceValues = NULL){
  x <- radioButtons(id, label, choices, selected, inline, width, choiceNames, choiceValues)
  x$children[[2]]$children[[1]] <- lapply(
    x$children[[2]]$children[[1]], function(y){
      y$children[[1]]$children[[1]]$attribs <- c(y$children[[1]]$children[[1]]$attribs, class="nes-radio")
      y
    }
  )
  x
}
