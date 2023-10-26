test_that("replacement works on single T", {
  expect_equal(transcribe("T"), "U")
})

test_that("replacement works on sequence", {
  expect_equal(transcribe("ATCGGGGATC"), "AUCGGGGAUC")
})
