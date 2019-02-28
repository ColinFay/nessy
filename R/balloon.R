#' Ballons container and div
#'
#' @param title title of the `balloon_container`
#' @param ... content of the element
#' @param title_tag tag level for `balloon_container`
#' @param side side for `balloon`
#'
#' @return a taglist
#' @export
#' @rdname balloons
#'


balloon_container <- function(title, ..., title_tag = "h2"){
  x <- container_with_title(title = title, ..., title_tag = title_tag)
  x[[1]]$attribs$class <- paste("nes-balloon", x[[1]]$attribs$class )
  x
}

#' @export
#' @rdname balloons
#' @importFrom glue glue
balloon <- function(..., side = c("left", "right")){
  side <- match.arg(side)
  tags$div(
    class = glue("nes-balloon from-{side}"),
    ...
    )
}
