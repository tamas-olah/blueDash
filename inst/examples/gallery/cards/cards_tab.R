cards_tab <- blueTabItem(
  tabName = "cards",
  
  # classic cards
  blueH1("Classic Cards", display = 4),
  blueRow(
    blueCard(
      width = 12,
      src = NULL,
      icon = icon("cogs"),
      status = "success",
      shadow = TRUE,
      border_level = 2,
      hover_shadow = TRUE,
      title = "Shiny Inputs",
      blueRow(
        blueColumn(
          width = 6,
          sliderInput(
            "obs", 
            "Number of observations:",
            min = 0, 
            max = 1000, 
            value = 500
          )
        ),
        blueColumn(width = 6, plotOutput("distPlot"))
      )
    ),
    br(), br(),
    blueCard(
      width = 12,
      title = "Blue Card",
      src = NULL,
      hover_lift = TRUE,
      shadow = TRUE,
      shadow_size = NULL,
      hover_shadow = FALSE,
      border_level = 0,
      icon = blueIcon("atom"),
      status = "primary",
      background_color = NULL,
      gradient = FALSE, 
      floating = FALSE,
      blueRow(
        blueColumn(
          width = 6,
          radioButtons(
            "dist", 
            "Distribution type:",
            c("Normal" = "norm",
              "Uniform" = "unif",
              "Log-normal" = "lnorm",
              "Exponential" = "exp")
          )
        ),
        blueColumn(width = 6, plotOutput("plot"))
      )
    ) 
  ),
  br(),
  
  # info cards
  blueH1("Info Cards", display = 4),
  blueRow(
    blueInfoCard(
      value = "350,897", 
      title = "TRAFFIC", 
      stat = 3.48, 
      stat_icon = icon("arrow-up"),
      description = "Since last month", 
      icon = blueIcon("planet"), 
      icon_background = "danger",
      hover_lift = TRUE
    ),
    blueInfoCard(
      value = "2,356", 
      title = "NEW USERS", 
      stat = -3.48, 
      stat_icon = icon("arrow-down"),
      description = "Since last week", 
      icon = icon("chart-pie"), 
      icon_background = "warning",
      shadow = TRUE
    ),
    blueInfoCard(
      value = "924", 
      title = "SALES", 
      stat = -1.10, 
      stat_icon = icon("arrow-down"),
      description = "Since yesterday", 
      icon = icon("users"), 
      icon_background = "yellow",
      background_color = "default"
    ),
    blueInfoCard(
      value = "49,65%", 
      title = "PERFORMANCE", 
      stat = 12, 
      stat_icon = icon("arrow-up"),
      description = "Since last month", 
      icon = icon("percent"), 
      icon_background = "info",
      gradient = TRUE,
      background_color = "orange",
      hover_lift = TRUE
    )
  ),
  
  # profile cards
  blueH1("User Cards", display = 4),
  blueRow(
    blueColumn(
      width = 3,
      blueUser(
        title = "Ryan Tompson",
        subtitle = "Web Developer",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-1-800x800.jpg"
      )
    ),
    blueColumn(
      width = 3,
      blueUser(
        title = "Romina Hadid",
        subtitle = "Marketing Strategist",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-2-800x800.jpg"
      )
    ),
    blueColumn(
      width = 3,
      blueUser(
        title = "Alexander Smith",
        subtitle = "UI/UX Designer",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-3-800x800.jpg"
      )
    ),
    blueColumn(
      width = 3,
      blueUser(
        title = "John Doe",
        subtitle = "Founder and CEO",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-4-800x800.jpg"
      )
    )
  ),
  br(), br(),
  
  blueH1("Profile Card", display = 4),
  blueRow(
    blueColumn(
      width = 12,
      blueProfile(
        title = "John",
        subtitle = "Japan, Kagoshima",
        src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-1-800x800.jpg",
        url = "https://www.google.com",
        url_1 = "https://www.google.com",
        url_2 = "https://www.google.com",
        stats = blueProfileStats(
          blueProfileStat(
            value = 22,
            description = "Friends"
          ),
          blueProfileStat(
            value = 10,
            description = "Photos"
          ),
          blueProfileStat(
            value = 89,
            description = "Comments"
          )
        ),
        "An artist of considerable range, Ryan — 
                  the name taken by Melbourne-raised, 
                  Brooklyn-based Nick Murphy — writes, 
                  performs and records all of his own music, 
                  giving it a warm, intimate feel with a solid 
                  groove structure. An artist of considerable 
                  range."
      )
    )
  )
)