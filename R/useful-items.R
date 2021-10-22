#' Create a Boostrap 4 dashboard info card
#'
#' Build an blue dashboard info card
#'
#' @param value info card value. 
#' @param title info card title.
#' @param stat info card stat value.
#' @param stat_icon info card stat icon. Expect \link{blueIcon} or \link[shiny]{icon}.
#' @param description info card stat description.
#' @param icon info card icon. Expect \link{blueIcon} or \link[shiny]{icon}. 
#' @param icon_background info card icon background color.
#' @param hover_lift Whether to apply a lift effect on hover. FALSE by default.
#' Not compatible with floating.
#' @param shadow Whether to apply a shadow effect. FALSE by default.
#' @param background_color Card background color. NULL by default.
#' @param gradient Whether to apply a gradient effect on the card background. FALSE by default.
#' @param width info card width. Between 1 and 12.
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueInfoCard <- function(value, title = NULL, stat = NULL, stat_icon = NULL, 
                          description = NULL, icon, icon_background = "default", 
                          hover_lift = FALSE, shadow = FALSE, 
                          background_color = NULL, gradient = FALSE, width = 3) {
  
  iconCl <- "icon icon-shape text-white rounded-circle shadow"
  if (!is.null(icon_background)) iconCl <- paste0(iconCl, " bg-", icon_background)
  
  cardCl <- "card card-stats mb-4 mb-xl-0"
  if (hover_lift) cardCl <- paste0(cardCl, " card-lift--hover")
  if (shadow) cardCl <- paste0(cardCl, " shadow")
  if (gradient) {
    if (!is.null(background_color)) cardCl <- paste0(cardCl, " bg-gradient-", background_color)
  } else {
    if (!is.null(background_color)) cardCl <- paste0(cardCl, " bg-", background_color)
  }
  
  if (!is.null(background_color))
    if (background_color == "default") text_color <- "text-white" else text_color <- NULL
  else text_color <- NULL
  
  infoCardTag <- shiny::tags$div(
    class = cardCl,
    shiny::tags$div(
      class = "card-body",
      # upper part
      shiny::fluidRow(
        blueR::blueColumn(
          shiny::tags$h5(class = paste0("card-title text-uppercase mb-0 ", text_color), title),
          shiny::span(class = paste0("h2 font-weight-bold mb-0 ", text_color), value)
        ),
        shiny::tags$div(
          class = "col-auto",
          shiny::tags$div(
            class = iconCl,
            icon
          )
        )
      ),
      # lower part
      shiny::fluidRow(
        class = "mx-2 mt-3 mb-0 text-sm",
        if (!is.null(stat)) {
          shiny::tagList(
            shiny::span(stat_icon, class = "mr-2"),
            shiny::tagAppendAttributes(shiny::div(stat), class = "mr-2")
          )
        },
        shiny::span(class = paste0("mt-0 h5 ", text_color), description)
      )
    )
  )
  
  blueR::blueColumn(width = width, infoCardTag)
  
}




#' Create a Boostrap 4 table container
#'
#' Build an blue table container
#'
#' @param ... \link{blueTableItems}.
#' @param cardWrap Whether to wrap the table in a card. FALSE by default.
#' @param title Card title if any.
#' @param headTitles Table header names. Must have the same length as the number of 
#' \link{blueTableItem} in \link{blueTableItems}. Set "" to have an empty title field.
#' @param dark Whether to enable dark mode. FALSE by default.
#' @param width Table width. 12 by default.
#' 
#' @examples
#' if (interactive()) {
#'  library(shiny)
#'  library(blueR)
#'  library(blueDash)
#'  shinyApp(
#'   ui = blueDashPage(
#'     navbar = blueDashNavbar(), 
#'     sidebar = blueDashSidebar(id = "mysidebar"), 
#'     header = blueDashHeader(), 
#'     body = blueDashBody(
#'      blueTable(
#'       headTitles = c(
#'        "PROJECT",
#'        "BUDGET",
#'        "STATUS",
#'        "USERS",
#'        "COMPLETION",
#'        ""
#'       ),
#'       blueTableItems(
#'        blueTableItem("Blue Design System"),
#'        blueTableItem(dataCell = TRUE, "$2,500 USD"),
#'        blueTableItem(
#'         dataCell = TRUE, 
#'         blueBadge(
#'          text = "Pending",
#'          status = "danger"
#'         )
#'        ),
#'        blueTableItem(
#'         blueAvatar(
#'          size = "sm",
#'          src = "https://image.flaticon.com/icons/svg/219/219976.svg"
#'          )
#'        ),
#'        blueTableItem(
#'         dataCell = TRUE, 
#'         blueProgress(value = 60, status = "danger")
#'        ),
#'        blueTableItem(
#'         blueButton(
#'          name = "Click me!",
#'          status = "warning",
#'          icon = "atom",
#'          size = "sm"
#'         )
#'        )
#'       )
#'      )
#'     ), 
#'     footer = blueDashFooter()
#'   ),
#'   server = function(input, output) { }
#'  )
#' }
#' 
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueTable <- function(..., cardWrap = FALSE, title = NULL, headTitles, dark = FALSE, width = 12) {
  
  # handle theme
  if (dark) {
    headCl <- "thead-dark"
    tableCl <- "table align-items-center table-dark table-flush"
    wrapperCl <- "card bg-default shadow"
  } else {
    headCl <- "thead-light"
    tableCl <- "table align-items-center table-flush"
    wrapperCl <- "card shadow"
  }
  
  # column headers
  tableHead <- shiny::tags$thead(
    class = headCl,
    shiny::tags$tr(
      lapply(seq_along(headTitles), function(i) shiny::tags$th(scope = "col", headTitles[[i]])) 
    )
  )
  
  # body rows
  tableBody <- shiny::tags$tbody(...)
  
  # table tag
  tableTag <- shiny::tags$div(
    class = "table-responsive",
    shiny::tags$table(
      class = tableCl,
      tableHead,
      tableBody
    )
  )
  
  # card wrapper or not
  if (cardWrap) {
    wrapper <- blueR::blueColumn(
      width = width,
      center = TRUE,
      shiny::tags$div(
        class = wrapperCl,
        shiny::tags$div(
          class = if (dark) "card-header bg-transparent border-0" else "card-header border-0",
          shiny::tags$h3(class = if (dark) "mb-0" else "text-white mb-0", title)
        ),
        tableTag
      )
    )
    
    return(wrapper)
  } else {
    return(tableTag)
  }
}




#' Create a Boostrap 4 table item row
#'
#' Build an blue table item row
#'
#' @param ... Slot for \link{blueTableItem}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueTableItems <- function(...) {
  shiny::tags$tr(...)
}



#' Create a Boostrap 4 table item
#'
#' Build an blue table item
#'
#' @param ... Any HTML element.
#' @param dataCell Whether the cell should be contain data or text. <td> by default.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueTableItem <- function(..., dataCell = FALSE) {
  if (dataCell) {
    shiny::tags$td(...)
  } else {
    shiny::tags$th(...)
  }
}




#' Create a Boostrap 4 avatar container
#'
#' Build an blue avatar container
#'
#' @param ... Slot for \link{blueAvatar}.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueAvatars <- function(...) {
  shiny::tags$div(class = "avatar-group", ...)
}


#' Create a Boostrap 4 avatar
#'
#' Build an blue avatar
#'
#' @param src Avatar inag path or url.
#' @param toolTip Optional tooltip triggered on mouse hover.
#' @param size Avatar size: choose one of "sm", "md" or "lg".
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueAvatar <- function(src, toolTip = NULL, size = c("sm", "md", "lg")) {
  
  size <- match.arg(size)
  avatarCl <- paste0("avatar avatar-", size)
  
  shiny::tags$a(
    href = NULL,
    class = avatarCl,
    `data-toggle` = "tooltip",
    `data-original-title` = toolTip,
    shiny::tags$img(
      src = src,
      class = "rounded-circle")
  )
}