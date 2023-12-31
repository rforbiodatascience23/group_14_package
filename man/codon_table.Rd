% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{codon_table}
\alias{codon_table}
\title{Codon Table}
\format{
An object of class \code{character} of length 64.
}
\source{
\url{https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?chapter=tgencodes#SG1}
}
\usage{
codon_table
}
\description{
codon_table: After the transcription process, you have mRNA sequence and we use this mRNA sequence to produce a functional protein (aminoacid sequence).
To produce this amino acid sequence, we use codon (which are basically 3 bases of mRNA starting from position one, start codon).
We use this codon table to produce our amino acid sequence. For each codon we have our speicif amino acid with its own biochemical properties.
}
\keyword{datasets}
