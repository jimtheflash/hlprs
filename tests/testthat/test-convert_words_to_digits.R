context("test-convert_words_to_digits")
# test data
test_string <- "onetwothreefourfivesixseveneightninezero"
test_num <- 1234567890
test_mixed <- "one234five6seven89zero"
expected_out_char <- "1234567890"
expected_out_num <- test_num
# tests
testthat::test_that("strings convert", {
  testthat::expect_equal(hlprs::convert_words_to_digits(test_string),
                         expected_out_char)
})
testthat::test_that("nums convert", {
  testthat::expect_equal(hlprs::convert_words_to_digits(test_num),
                         expected_out_char)
})
testthat::test_that("mixed convert", {
  testthat::expect_equal(hlprs::convert_words_to_digits(test_mixed),
                         expected_out_char)
})
testthat::test_that("return numeric works", {
  testthat::expect_equal(hlprs::convert_words_to_digits(test_string, 
                                                        return_numeric = TRUE),
                         expected_out_num)
})
