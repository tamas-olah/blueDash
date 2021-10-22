#' @title Launch the blueDash Gallery
#'
#' @description A gallery of all components available in blueDash.
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'
#'  blueDashGallery()
#'
#' }
blueDashGallery <- function() { # nocov start
  if (!requireNamespace(package = "magrittr"))
    message("Package 'magrittr' is required to run this function")
  
  shiny::shinyAppFile(
    system.file(
      paste0("examples/gallery/app.R"), 
      package = 'blueDash', 
      mustWork = TRUE
    )
  )
}