library(shiny)
library(blueR)
library(blueDash)

shiny::shinyApp(
  ui = blueDashPage(
    title = "Blue App", 
    description = "Your description", 
    author = "You",
    navbar = blueDashNavbar(), 
    sidebar = blueDashSidebar(
      id = "sidebar", 
      side = "left",
      size = "md", 
      skin = "light",
      background = "white",
      
      sliderInput(
        "controller", 
        "Controller", 
        min = 1, 
        max = 2, 
        value = 1,
        step= 1
      ),
      
      blueSidebarMenu(
        blueSidebarItem(
          tabName = "Tab1",
          icon = blueIcon(name = "circle-08", color = "success"),
          "Tab 1"
        ),
        blueSidebarItem(
          tabName = "Tab2",
          icon = blueIcon(name = "atom", color = "success"),
          "Tab 2"
        )
      )
      
    ), 
    header = blueDashHeader(), 
    body = blueDashBody(
      
      # recover the R export in JS in the message arg. Message is an object.
      # If on the R side message was a list, you can access its children by
      # message.children.
      shiny::tags$head(
        shiny::tags$script(
          'Shiny.addCustomMessageHandler("update-tabs", function(message) {
                var currentTab = parseInt(message);
                console.log(message); // we check if the message is displayed
                
                // hide and inactivate all not selected tabs
                $(".active.show").removeClass("active show");
                $(".tab-pane.active.show").removeClass("active show");
                
                // add active class to the current selected tab and show its content
                $("#tab-Tab" + currentTab).addClass("active show");
                $("#shiny-tab-Tab" + currentTab).addClass("active show");
               });
              '
        )
      ),
      
      blueTabItems(
        blueTabItem(
          tabName = "Tab1",
          blueCard(
            status = "primary",
            width = 12,
            title = "Card 1",
            hover_lift = TRUE,
            shadow = TRUE,
            icon = blueIcon("check-bold"),
            src = "#",
            "Blue is a great free UI package based on Bootstrap 4 
            that includes the most important components and features."
          )
        ),
        blueTabItem(
          tabName = "Tab2",
          blueBadge(
            text = "My badge",
            src = "https://www.google.com",
            pill = FALSE,
            status = "success"
          )
        )
      )
    ),
    footer = blueDashFooter(copyrights = "Yourself")
  ),
  server = function(input, output, session) {
    
    # send data from R to Javascript
    observeEvent(input$controller, {
      session$sendCustomMessage(
        type = "update-tabs",
        message = input$controller
      )
    })
  }
)