molecbio
================

# Installation

``` r
library(molecbio)
```

# Overview

The package **`molecbio`** consists of various functions intended to
replicate the central dogma of molecular biology and additional
functions to assist the management and visualization of the analysis.

# Implementation

### 1. **`dna_seq()`**

### 2. **`transcribe()`**

The **`transcribe()`** function performs transcription, which is the
process of converting a DNA sequence into an RNA sequence. In this
function, DNA thymine (T) nucleotides are replaced with RNA uracil (U)
nucleotides. It takes in a character string representing a DNA sequence
and impliments transcription on it to return the corresponding mRNA
sequence.

``` r

library(molecbio)

DNA = dna_seq(10)

DNA
#> [1] "GAACATCAAT"

mRNA = transcribe(DNA)
mRNA
#> [1] "GAACAUCAAU"
```

### 3. **`sequence_to_codon()`**

### 4. **`translate()`**

### 5. **`amino_acid_plot()`**

The **`amino_acid_plot()`** creates a column plot that visualizes the
frequency of occurrence of each unique amino acid in a given peptide
sequence.

``` r

library(molecbio)

sample_peptide <- "MGKTGKEKSIEEILVIEQIESDNL"
col_plot <- amino_acid_plot(sample_peptide)
col_plot
```

![](README_files/figure-gfm/unnamed-chunk-3-1.svg)<!-- --> \# Usage The
five functions together helps us replicate the entire process of
transcription and further analyze the results in a hastle free way as
shown below:

``` r

library(molecbio)

DNA = dna_seq(100)

RNA = transcribe(DNA)

Codon = sequence_to_codon(RNA)

Peptide_Sequence = translate(Codon)

Col_plot = amino_acid_plot(Peptide_Sequence)

Col_plot
```

![](README_files/figure-gfm/unnamed-chunk-4-1.svg)<!-- -->
