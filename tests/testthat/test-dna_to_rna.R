test_that("replacement works on single T", {
  expect_equal(dna_to_rna("T"), "U")
})

test_that("replacement works on sequence", {
  expect_equal(dna_to_rna("ATCGGGGATC"), "AUCGGGGAUC")
})
