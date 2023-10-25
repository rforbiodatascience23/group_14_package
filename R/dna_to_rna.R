#' RNA sequence to DNA sequence
#'
#' @param dna_seq The dna sequence to be converted
#'
#' @return The corresponding RNA sequence obtained from the DNA sequence
#' @export
#'
#' @examples
#' dna_to_rna("ATCGGGGATC")
dna_to_rna <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
