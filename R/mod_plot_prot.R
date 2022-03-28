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
 
  )
}
    
#' plot_prot Server Functions
#'
#' @noRd 
mod_plot_prot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_plot_prot_ui("plot_prot_1")
    
## To be copied in the server
# mod_plot_prot_server("plot_prot_1")
