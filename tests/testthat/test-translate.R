test_that("correct amino acid is returned", {
  expect_equal(translate(codons = "AUG"), "L")
})

test_that("stop codon is returned", {
  expect_equal(translate(codons = "UAA"), "_")
})
