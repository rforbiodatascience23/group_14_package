#' Amino Acid Frequency PLot
#'
#' @param peptide_sequence The peptide sequence to be visualized
#'
#' @return The frequency plot for the different amino acids present
#' @export
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'


amino_acid_plot <- function(peptide_sequence){
  # Extracts the unique amino acids from the sequence
  unique_amino_acids <- peptide_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Calculates the frequency of occurance of each unique amino acid
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = peptide_sequence, pattern =  amino_acid)) |>
    as.data.frame()


  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

  # Creates column plot
  amino_col_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acid, y = Counts, fill = Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_col_plot)
}
