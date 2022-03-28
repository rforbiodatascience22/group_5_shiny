#' plot_prot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_plot_prot_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      mainPanel(
        plotOutput(
          outputId = ns("abundance")
        )
      )
    )
  )
}

#' plot_prot Server Functions
#'
#' @noRd
mod_plot_prot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide %>%
          DOgma::AA_abundance() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_plot_prot_ui("plot_prot_1")

## To be copied in the server
# mod_plot_prot_server("plot_prot_1")
