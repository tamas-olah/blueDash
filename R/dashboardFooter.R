#' Create a Boostrap 4 dashboard footer
#'
#' Build an blue dashboard footer
#'
#' @param ... Slot for \link{blueFooterMenu}.
#' @param copyrights Left text, if any.
#' @param src Left text src, if any. 
#' 
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueDashFooter <- function(..., copyrights = NULL, src = NULL) {
  shiny::tags$footer(
    class = "footer",
    shiny::tags$div(
      class = "row align-items-center justify-content-xl-between",
      shiny::tags$div(
        class = "col-xl-6",
        shiny::tags$div(
          class = "copyright text-center text-xl-left text-muted",
          shiny::a(
            class = "font-weight-bold ml-1", 
            href = src,
            target = "_blank",
            copyrights
          )
        )
      ),
      shiny::tags$div(
        class = "col-xl-6",
        ...
      )
    )
  )
}


#' Create a Boostrap 4 dashboard footer menu
#'
#' Build an blue dashboard footer menu
#'
#' @param ... Slot for \link{blueFooterItem}.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueFooterMenu <- function(...) {
  shiny::tags$ul(
    class = "nav nav-footer justify-content-center justify-content-xl-end",
    ...
  )
}



#' Create a Boostrap 4 dashboard footer menu item
#'
#' Build an blue dashboard footer menu item
#'
#' @param ... Item name.
#' @param src Item external link.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueFooterItem <- function(..., src = NULL) {
  shiny::tags$li(
    class = "nav-item",
    shiny::a(
      class = "nav-link",
      target = "_blank",
      href = src,
      ...
    )
  )
}