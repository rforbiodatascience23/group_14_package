#' Function 4: Translate sequences
#'
#' @param codons
#'
#' @return codon values
#' @export
#'
#' @examples
#' translate("CCG")
translate <- function(codons){
  idenfity <- paste0(codon_table[codons], collapse = "")
  return(identify)
}
