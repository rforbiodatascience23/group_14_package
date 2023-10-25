test_that("correct amino acid is returned", {
  expect_equal(translate("AUG"), "M")
})

test_that("stop codon is returned", {
  expect_equal(translate("UAA"), "_")
})
