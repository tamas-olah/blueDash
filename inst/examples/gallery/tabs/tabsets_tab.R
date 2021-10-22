tabText1 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache 
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit 
            butcher retro keffiyeh dreamcatcher synth. Raw denim you probably 
            haven't heard of them jean shorts Austin. Nesciunt tofu stumptown 
            aliqua, retro synth master cleanse"

tabText2 <- "Cosby sweater eu banh mi, qui irure terry richardson ex squid. 
            Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan 
            american apparel, butcher voluptate nisi qui."

tabText3 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. 
            Mustache cliche tempor, williamsburg carles vegan helvetica. 
            Reprehenderit butcher retro keffiyeh dreamcatcher synth"


tabsets_tab <- blueTabItem(
  tabName = "tabs",
  
  blueRow(
    
    # Horizontal Tabset
    blueColumn(
      width = 6,
      blueH1("Horizontal Tabset", display = 4),
      blueTabSet(
        id = "tab-1",
        card_wrapper = TRUE,
        horizontal = TRUE,
        circle = FALSE,
        size = "sm",
        width = 12,
        iconList = lapply(X = 1:3, FUN = blueIcon, name = "atom"),
        blueTab(
          tabName = "Tab 1",
          active = FALSE,
          tabText1
        ),
        blueTab(
          tabName = "Tab 2",
          active = TRUE,
          tabText2
        ),
        blueTab(
          tabName = "Tab 3",
          active = FALSE,
          tabText3
        )
      )
    ),
    
    # Vertical Tabset
    blueColumn(
      width = 6,
      blueH1("Vertical Tabset", display = 4),
      blueTabSet(
        width = 12,
        id = "tab-2",
        card_wrapper = TRUE,
        horizontal = FALSE,
        circle = TRUE,
        size = "sm",
        blueTab(
          tabName = "Tab 4",
          active = FALSE,
          tabText1
        ),
        blueTab(
          tabName = "Tab 5",
          active = TRUE,
          tabText2
        ),
        blueTab(
          tabName = "Tab 6",
          active = FALSE,
          tabText3
        )
      ) 
    )
  )
)