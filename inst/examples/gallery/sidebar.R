blueSidebar <- blueDashSidebar(
  vertical = TRUE,
  skin = "light",
  background = "white",
  size = "md",
  side = "left",
  id = "my_sidebar",
  brand_url = "http://www.google.com",
  brand_logo = "https://demos.creative-tim.com/blue-design-system/assets/img/brand/blue.png",
  dropdownMenus = blueDropNav(
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
  ),
  blueSidebarHeader(title = "Main Menu"),
  blueSidebarMenu(
    blueSidebarItem(
      tabName = "cards",
      icon = blueIcon(name = "tv-2", color = "info"),
      "Cards"
    ),
    blueSidebarItem(
      tabName = "tables",
      icon = blueIcon(name = "tv-1", color = "green"),
      "Tables"
    ),
    blueSidebarItem(
      tabName = "tabs",
      icon = blueIcon(name = "planet", color = "warning"),
      "Tabs"
    ),
    blueSidebarItem(
      tabName = "alerts",
      icon = blueIcon(name = "bullet-list-67", color = "danger"),
      "Alerts"
    ),
    blueSidebarItem(
      tabName = "medias",
      icon = blueIcon(name = "circle-08", color = "success"),
      "Medias"
    ),
    blueSidebarItem(
      tabName = "items",
      icon = blueIcon(name = "ui-04", color = "pink"),
      "Other items"
    ),
    blueSidebarItem(
      tabName = "effects",
      icon = blueIcon(name = "atom", color = "black"),
      "CSS effects"
    ),
    blueSidebarItem(
      tabName = "sections",
      icon = blueIcon(name = "credit-card", color = "grey"),
      "Sections"
    )
  ),
  blueSidebarDivider(),
  blueSidebarHeader(title = "Other Items")
)