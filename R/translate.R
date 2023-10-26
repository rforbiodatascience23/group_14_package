#' Function 4: Translate sequences
#'
#' @param codons
#'
#' @return corresponding amino acid code
#' @export
#'
#' @examples
#' translate("CCG")
translate <- function(codons){
  identify <- paste0(codon_table[codons], collapse = "")
  return(identify)
}
