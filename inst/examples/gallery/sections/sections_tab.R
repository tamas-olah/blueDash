sections_tab <- blueTabItem(
  tabName = "sections",
  blueDashHeader(
    gradient = TRUE,
    color = "warning",
    separator = TRUE,
    separator_color = "info",
    top_padding = 8,
    bottom_padding = 8,
    blueCard(
      src = "https://www.google.com",
      status = "success",
      border_level = 0,
      hover_shadow = TRUE,
      title = "Card with Margins"
    ) %>% blueMargin(orientation = "t", value = -150)
  ),
  blueDashHeader(
    gradient = FALSE,
    color = "info",
    top_padding = 8,
    bottom_padding = 8,
    blueRow(
      blueColumn(
        width = 6,
        h1("Section Text"),
        h3("Some text here"),
        blueCard()
      ),
      blueColumn(
        width = 6, 
        blueCard() %>% blueMargin(orientation = "t", value = -200)
      )
    )
  ),
  blueDashHeader(
    gradient = FALSE,
    color = "secondary",
    top_padding = 8,
    bottom_padding = 8,
    mask = TRUE,
    background_img = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/img-1-1200x1000.jpg",
    opacity = 6,
    blueH1("Header with mask", display = 1) %>% blueTextColor(color = "white"),
    blueLead("This is the content.") %>% blueTextColor(color = "white")
  )
)