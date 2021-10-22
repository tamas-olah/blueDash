alerts_tab <- blueTabItem(
  tabName = "alerts",
  blueH1("Alerts", display = 4),
  blueRow(
    blueColumn(
      width = 4,
      blueAlert(
        icon = blueIcon("basket"),
        status = "danger",
        "This is an alert",
        closable = TRUE
      )
    ),
    blueColumn(
      width = 4,
      blueAlert(
        icon = icon("bars"),
        status = "success",
        "This is an alert",
        closable = TRUE
      )
    ),
    blueColumn(
      width = 4,
      blueAlert(
        icon = blueIcon("app", color = "white"),
        status = "info",
        "This is an alert",
        closable = TRUE
      )
    )
  ),
  br(), br(),
  
  # Modals
  blueH1("Modals", display = 4),
  blueRow(
    
    # modal with gradient
    blueButton(
      name = "Click me!",
      status = "danger",
      icon = blueIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal1"
    ),
    blueModal(
      id = "modal1",
      title = "This is a modal",
      status = "danger",
      gradient = TRUE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    ),
    
    # modal without gradient
    blueButton(
      name = "Click me!",
      status = "warning",
      icon = blueIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal2"
    ),
    blueModal(
      id = "modal2",
      title = "This is a modal without gradient",
      status = "warning",
      gradient = FALSE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    ),
    
    # Modal without status not gradient
    blueButton(
      name = "Click me!",
      status = "info",
      icon = blueIcon("atom"),
      size = "lg",
      toggle_modal = TRUE,
      modal_id = "modal3"
    ),
    blueModal(
      id = "modal3",
      title = "This is a modal without gradient nor status",
      status = NULL,
      gradient = FALSE,
      "YOU SHOULD READ THIS!",
      br(),
      "A small river named Duden flows by their place and supplies it with the necessary regelialia."
    )
    
  )
)