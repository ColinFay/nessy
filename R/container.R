#' @export
#' @rdname container
#'

container <- function(...,is_dark = FALSE,is_rounded){
  tags$div(class = "containers", ...)
}

#' Customisable containers
#'
#' @param title Title of the container
#' @param ... Content of the container
#' @param is_centered Should the container be centered?
#' @param is_dark Should the container be dark?
#' @param is_rounded Should the container be rounded?
#' @param title_tag Header level of the title of the container
#'
#' @return a taglist
#'
#' @export
#' @rdname container
#'
container_with_title <- function(title = NULL, ..., is_centered = FALSE,
                                 is_dark = FALSE, title_tag = "h2"){
  class_ <- "container with-title"
  if (is_centered){
    class_ <- paste(class_, "is-center")
  }
  if (is_dark){
    class_ <- paste(class_, "is-dark")
  }
  tagList(
    tags$section(
      class = class_,
      get(title_tag)(class="title", title),
      tags$div(
        class="containers",
        if (is_dark){
          tags$p(style="color: white;", ...)
        } else {
          tags$p(...)
        }

      )
    )

  )
}

#' @export
#' @rdname container

container_simple <- function(..., is_centered = FALSE,
                             is_dark = FALSE,is_rounded = FALSE){
  class_ <- "container"
  if (is_centered){
    class_ <- paste(class_, "is-center")
  }
  if (is_dark){
    class_ <- paste(class_, "is-dark")
  }
  if (is_rounded){
    class_ <- paste(class_, "is-rounded")
  }
  tagList(
    tags$section(
      class = class_,
      tags$div(
        class="containers",
        if (is_dark){
          tags$p(style="color: white;", ...)
        } else {
          tags$p(...)
        }

      )
    )
  )
}
