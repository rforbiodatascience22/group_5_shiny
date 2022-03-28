#' dna_to_prot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_dna_to_prot_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        "peptide_sequence"
      ),
      mainPanel(
        "plot"
      )
    )
  )
}

#' dna_to_prot Server Functions
#'
#' @noRd
mod_dna_to_prot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns


  })
}

## To be copied in the UI
# mod_dna_to_prot_ui("dna_to_prot_1")

## To be copied in the server
# mod_dna_to_prot_server("dna_to_prot_1")
