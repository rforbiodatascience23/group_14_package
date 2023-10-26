#' Generating random DNA sequence
#'
#' @param seq_length The length of the DNA sequence that we want to generate
#'
#' @return A random DNA sequence of length "seq_length"
#' @export
#'
#' @examples
#' dna_seq(10)
#' dna_seq(5)
#' dna_seq(20)
dna_seq <- function(seq_length){
  random_nucleotides <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  random_dna_seq <- paste0(random_nucleotides, collapse = "")
  return(random_dna_seq)
}

dna_seq(10)

