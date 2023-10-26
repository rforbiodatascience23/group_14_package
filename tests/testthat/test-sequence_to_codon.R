test_that("Sequence is converted to codons", {
  expect_equal(sequence_to_codon("AUCGAU"),c( "AUC", "GAU") )
})
