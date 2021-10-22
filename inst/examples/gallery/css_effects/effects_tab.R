effects_tab <- blueTabItem(
  tabName = "effects",
  blueRow(
    blueColumn(
      width = 6, 
      blueImage(
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/ill/ill-2.svg",
        floating = TRUE,
        card_mode = TRUE
      ) %>% bluePersp(side = "left")
    )
  ) %>% bluePadding(orientation = "y", value = 5),
  blueRow(
    blueColumn(
      width = 6, 
      h1("Perspective effect"),
      h6("Disabled on small screens")
    ),
    blueColumn(
      width = 6, 
      blueImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/promo-1.png",
        floating = TRUE,
        card_mode = TRUE,
        hover_lift = FALSE
      ) %>% bluePersp(side = "right")
    )
  )
)