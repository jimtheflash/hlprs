testthat::context("test-convert_char_to_numeric")
# make test data
test_data <- list(
  charnums = as.character(1:10),
  mixed_charnums = c(rep("MISSING VAL", 5), 6:10),
  nums = 1:10,
  dates = seq(Sys.Date(), Sys.Date() + 9, by = 1)
)
# tests
testthat::test_that("charnums convert", {
  testthat::expect_equal(hlprs::convert_char_to_numeric(test_data$charnums),
                         1:10)
})
testthat::test_that("mixed_charnums convert", {
  testthat::expect_equal(hlprs::convert_char_to_numeric(test_data$mixed_charnums),
                         c(NA, NA, NA, NA, NA, 6, 7, 8, 9, 10))
})
testthat::test_that("nums and dates don't convert", {
  testthat::expect_equal(hlprs::convert_char_to_numeric(test_data$nums),
                         1:10)
  testthat::expect_equal(hlprs::convert_char_to_numeric(test_data$dates),
                         test_data$dates)
})