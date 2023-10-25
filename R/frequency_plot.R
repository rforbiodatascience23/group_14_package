#' Amino Acid Frequency PLot
#'
#' @param amino_acids
#'
#' @return The frequency plot for the different amino acids present
#' @export
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples
frequency_plot <- function(amino_acids){
  unique_amino_acids <- amino_acids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = amino_acids, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_acids"]] <- rownames(counts)

  acid_freq_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acids, y = Counts, fill = Amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(acid_freq_plot)
}
