#' Title sequence_to_codons
#'
#' @param main_sequence sequence to be converted into codons
#' @param start
#'
#' @return codons i.e, multiple sequences of three nucleotides from the main sequence. It returns a substring
#' @export
#'
#' @examples main_sequence = "ATCGAT"
sequence_to_codon <- function(main_sequence, start = 1){
  seq1 <- nchar(main_sequence)
  codons <- substring(main_sequence,
                      first = seq(from = start, to = seq1-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq1, by = 3))
  return(codons)
}

