#' Get a NES example
#'
#' @param which The example to run. If empty, all the available examples are listed.
#'
#' @return A path to the example.
#' @export
#'
#' @examples
#' nessy_examples()

nessy_examples <- function(which = NULL){
  if (is.null(which)){
    list.files(
      system.file("examples", package = "nessy")
    )
  } else {
    normalizePath(
      file.path(
        system.file("examples", which, package = "nessy")
      )
    )
  }
}
