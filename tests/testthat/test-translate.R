test_that("correct amino acids are returned", {
  expect_equal(translate("UUA"), "L")
})

test_that("stop amino acids are returned", {
  expect_equal(translate("UAA"), "_")
})
