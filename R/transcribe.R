#' Transcribe DNA sequence to RNA sequence
#'
#' @param dna_seq The DNA sequence to be converted
#'
#' @return The corresponding RNA sequence obtained from the DNA sequence
#' @export
#'
#' @examples
#' transcribe("ATCGGGGATC")
transcribe <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
