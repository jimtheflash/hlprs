testthat::context("test-convert_digits_to_words")
# test data
test_string <- "1234567890"
test_num <- 1234567890
test_mixed <- "one234five6seven89zero"
expected_out <- "onetwothreefourfivesixseveneightninezero"
# tests
testthat::test_that("strings convert", {
  testthat::expect_equal(hlprs::convert_digits_to_words(test_string),
                         expected_out)
})
testthat::test_that("nums convert", {
  testthat::expect_equal(hlprs::convert_digits_to_words(test_num),
                         expected_out)
})
testthat::test_that("mixed convert", {
  testthat::expect_equal(hlprs::convert_digits_to_words(test_mixed),
                         expected_out)
})
