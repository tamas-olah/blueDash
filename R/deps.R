# Add an html dependency, without overwriting existing ones
appendDependencies <- function(x, value) {
  if (inherits(value, "html_dependency"))
    value <- list(value)
  
  old <- attr(x, "html_dependencies", TRUE)
  
  htmltools::htmlDependencies(x) <- c(old, value)
  x
}

# Add dashboard dependencies to a tag object
addDeps <- function(x) {
  
  # CSS, icons
  #favicon <- "favicon.png"
  google_fonts <- "https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
  nucleo_css <- "nucleo.css"
  fontawesome_css <- "all.min.css"
  blue_css <- "blue.min.css"
  
  # JS
  bootstrap_js <- "bootstrap.bundle.min.js"
  blue_js <- "blue.min.js"
  blueDash_js <- "blueDash.js"
  
  dashboardDeps <- list(
    # blueDash custom js
    htmltools::htmlDependency(
      name = "blueDash",
      version = as.character(utils::packageVersion("blueDash")),
      src = c(file = system.file("blueDash-0.1.0", package = "blueDash")),
      script = blueDash_js
    ),
    # bootstrap deps
    htmltools::htmlDependency(
      name = "bootstrap", 
      version = "4.1.3",
      src = c(file = system.file("bootstrap-4.1.3", package = "blueDash")),
      script = bootstrap_js
    ),
    # google fonts
    htmltools::htmlDependency(
      name = "googlefonts",
      version = as.character(utils::packageVersion("blueDash")),
      src = c(href = google_fonts),
      stylesheet = ""
    ),
    # nucleo
    htmltools::htmlDependency(
      name = "nucleo", 
      version = as.character(utils::packageVersion("blueDash")),
      src = c(file = system.file("nucleo-0.1.0", package = "blueDash")),
      stylesheet = nucleo_css
    ),
    # fontawesome
    htmltools::htmlDependency(
      name = "fontawesome", 
      version = "5.3.1",
      src = c(file = system.file("fontawesome-5.3.1", package = "blueDash")),
      stylesheet = fontawesome_css
    ),
    # blue
    htmltools::htmlDependency(
      name = "blue", 
      version = "1.0.0",
      src = c(file = system.file("blue-1.0.0", package = "blueDash")),
      stylesheet = blue_css,
      script = blue_js
    )
    
  )
  appendDependencies(x, dashboardDeps)
}