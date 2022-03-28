#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#' @importFrom magrittr %>%
app_server <- function(input, output, session) {
  # Your application server logic
  mod_dna_to_prot_server("dna_to_prot_1")
  mod_plot_prot_server("plot_prot_1")
}
