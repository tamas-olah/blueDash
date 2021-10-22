library(shiny)
library(blueR)
library(blueDash)
library(magrittr)

# template
source("sidebar.R")
source("navbar.R")
source("header.R")
source("footer.R")

# elements
source("cards/cards_tab.R")
source("tabs/tabsets_tab.R")
source("alerts/alerts_tab.R")
source("medias/medias_tab.R")
source("items/items_tab.R")
source("css_effects/effects_tab.R")
source("sections/sections_tab.R")
source("tables/tables_tab.R")

# App
shiny::shinyApp(
  ui = blueDashPage(
    title = "Blue Dashboard Demo",
    author = "David",
    description = "Blue Dash Test",
    sidebar = blueSidebar,
    navbar = blueNav, 
    header = blueHeader,
    body = blueDashBody(
      blueTabItems(
        cards_tab,
        tables_tab,
        tabsets_tab,
        alerts_tab,
        images_tab,
        items_tab,
        effects_tab,
        sections_tab
      )
    ),
    footer = blueFooter
  ),
  server = function(input, output) {
    output$distPlot <- renderPlot({
      hist(rnorm(input$obs))
    })
    
    output$plot <- renderPlot({
      dist <- switch(
        input$dist,
        norm = rnorm,
        unif = runif,
        lnorm = rlnorm,
        exp = rexp,
        rnorm
      )
      
      hist(dist(500))
    })
    
    # blueTable
    output$blueTable <- renderUI({
      
      wrap <- if (input$cardWrap == "Enable") TRUE else FALSE
      
      blueTable(
        cardWrap = wrap,
        headTitles = c(
          "PROJECT",
          "BUDGET",
          "STATUS",
          "USERS",
          "COMPLETION",
          ""
        ),
        blueTableItems(
          blueTableItem("Blue Design System"),
          blueTableItem(dataCell = TRUE, "$2,500 USD"),
          blueTableItem(
            dataCell = TRUE, 
            blueBadge(
              text = "Pending",
              status = "danger"
            )
          ),
          blueTableItem(
            blueAvatar(
              size = "sm",
              src = "https://image.flaticon.com/icons/svg/219/219976.svg"
            )
          ),
          blueTableItem(
            dataCell = TRUE, 
            blueProgress(value = 60, status = "danger")
          ),
          blueTableItem(
            blueButton(
              name = "Click me!",
              status = "warning",
              icon = "atom",
              size = "sm"
            )
          )
        )
      )
    })
    
  }
)