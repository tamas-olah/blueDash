blueNav <- blueDashNavbar(
  blueDropNav(
    title = "Dropdown Menu", 
    src = "https://demos.creative-tim.com/blue-dashboard/assets/img/theme/team-4-800x800.jpg", 
    orientation = "right",
    blueDropNavTitle(title = "Welcome!"),
    blueDropNavItem(
      title = "Item 1", 
      src = "https://www.google.com", 
      icon = blueIcon("single-02")
    ),
    blueDropNavItem(
      title = "Item 2", 
      src = NULL, 
      icon = blueIcon("settings-gear-65")
    ),
    blueDropNavDivider(),
    blueDropNavItem(
      title = "Item 3", 
      src = "#", 
      icon = blueIcon("calendar-grid-58")
    )
  )
)