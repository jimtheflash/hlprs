#' Convert character vectors that could be numeric, to numeric
#' @param char character vector that looks like it's full of numbers
#' @param threshold numeric proportion of non-numeric values in char
#' @param ignore_dates logical should dates be returned untransformed
#' @return if proportion of \code{NAs < threshold} returns numeric, else returns untransformed
#' @export
convert_char_to_numeric <- function(char = NULL, 
                                    threshold = .8,
                                    ignore_dates = TRUE) {
  # handle dates
  if (ignore_dates == TRUE & lubridate::is.instant(char)) {
    return(char)
  }
  # convert char to numeric; we expect NAs, so suppressing warnings
  numchar <- suppressWarnings(as.numeric(char))
  # check if proportion of NAs is at or below threshold, and return accordingly
  if (sum(is.na(numchar)) / length(char) <= threshold) {
    return(numchar)
  } else {
    return(char)
  }
}