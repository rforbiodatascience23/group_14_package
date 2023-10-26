test_that("random dna sequence is generated of length 4", {
  expect_equal(nchar(dna_seq(4)), 4)
})

