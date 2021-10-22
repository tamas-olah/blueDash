images_tab <- blueTabItem(
  tabName = "medias",
  
  # Images
  blueRow(
    blueColumn(
      width = 6,
      blueImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/promo-1.png",
        floating = FALSE,
        card_mode = TRUE
      )
    ),
    blueColumn(
      width = 6,
      blueImage(
        url = "https://www.google.com",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/promo-1.png",
        floating = TRUE,
        card_mode = FALSE
      )
    )
  ),
  br(),
  blueRow(
    blueCarousel(
      id = "carousel1",
      blueCarouselItem(
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/img-1-1200x1000.jpg",
        active = TRUE
      ),
      blueCarouselItem(
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/img-2-1200x1000.jpg",
        active = FALSE
      )
    ) %>% bluePersp(side = "left")
  )
)