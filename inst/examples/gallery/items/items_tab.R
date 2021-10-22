avatarSizes <- c("sm", "md", "lg")
avatarTooltips <- c(NULL, "My avatar", NULL)

items_tab <- blueTabItem(
  tabName = "items",
  
  # Badges
  blueH1("Badges", display = 4),
  blueRow(
    blueColumn(
      width = 3,
      blueBadge(
        text = "My badge",
        src = "https://www.google.com",
        pill = TRUE,
        status = "danger"
      )
    ),
    blueColumn(
      width = 3,
      blueBadge(
        text = "My badge",
        src = "https://www.google.com",
        pill = TRUE,
        status = "primary"
      )
    ),
    blueColumn(
      width = 3,
      blueBadge(
        text = "My badge",
        pill = TRUE,
        status = "warning"
      )
    ),
    blueColumn(
      width = 3,
      blueBadge(
        text = "My badge",
        src = "https://www.google.com",
        pill = FALSE,
        status = "success"
      )
    )
  ),
  br(), br(),
  # Progress
  
  blueH1("Progress Bars", display = 4),
  blueProgress(value = 10, status = "danger", text = "Custom Text"),
  blueProgress(value = 40, status = "info", text = NULL),
  blueProgress(value = 90, status = "warning", text = blueIcon("atom")),
  
  br(), br(),
  blueH1("Avatars", display = 4),
  blueAvatars(
    lapply(X = 1:3, FUN = function(i) {
      blueAvatar(
        toolTip = avatarTooltips[i],
        size = avatarSizes[i],
        src = "https://image.flaticon.com/icons/svg/219/219976.svg"
      )
    })
  )
)