% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dsl.R
\name{label}
\alias{label}
\title{Create Semantic UI label tag}
\usage{
label(..., class = "", is_link = TRUE)
}
\arguments{
\item{...}{Other arguments to be added such as content of the tag (text, icons) and/or attributes (style)}

\item{class}{class of the label. Look at https://semantic-ui.com/elements/label.html for all possibilities.}

\item{is_link}{If TRUE creates label with 'a' tag, otherwise with 'div' tag.
#'}
}
\description{
This creates a \code{div} or \code{a} tag with with class \code{ui label} using Semantic UI.
}
\examples{
## Only run examples in interactive R sessions
if (interactive()){
  library(shiny)
  library(shiny.semantic)

  ui <- shinyUI(
    semanticPage(
      ## label
      label(icon = icon("mail icon"), 23),
      p(),
      ## pointing label
      field(
        text_input("ex", label = "", type = "text", placeholder = "Your name")),
      label("Please enter a valid name", class = "pointing red basic"),
      p(),
      ## tag
      label(class = "tag", "New"),
      label(class = "red tag", "Upcoming"),
      label(class =" teal tag","Featured"),
      ## ribbon
      segment(class = "ui raised segment",
              label(class = "ui red ribbon", "Overview"),
              "Text"),
      ## attached
      segment(class = "ui raised segment",
              label(class = "top attached", "HTML"),
              p("Text"))
    ))
  server <- function(input, output, session) {
  }
  shinyApp(ui, server)
}
}
