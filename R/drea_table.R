#' @title Table formatting
#'
#' @description  This function formats tables into drea standard for importing into word documents
#'
#' @return
#' @export
#'
#' @examples
drea_table <- function(dataframe){
  dataframe %>% flextable() %>%
    set_table_properties(layout = "autofit", width = .75) %>%
    theme_box() %>% font(fontname = "Calibri", part = "body") %>%
    font(fontname = "Calibri", part = "head") %>%
    #align_nottext_col(align = "center", header = FALSE, footer = FALSE) %>%
    align(align = "center", part = "body") %>%
    align(align = "center", part = "head") %>%
    bg(part = "header", bg = "gray")
}
