test_that("random dna sequence is generated of length 4", {
  expect_equal(dna_seq(4), "ATCG")
})

test_that("random dna sequence is generated of length 8", {
  expect_equal(dna_to_rna(8), "ATCGGGGA")
})
