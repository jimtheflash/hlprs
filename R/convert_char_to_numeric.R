#' Convert character vectors that could be numeric, to numeric
#' @param char character vector that could be numeric
#' @param threshold proportion of non-numeric values in char
#' @return a numeric, or a character vector if threshold exceeded
#' @export
convert_char_to_numeric <- function(char = NULL, 
                                    threshold = .8) {
  # calculate the proportion of NAs
  sum_nas <- sum(is.na(as.numeric(char)))
  proportion_nas <- sum_nas / length(char)
  # if threshold not exceeded, quietly convert to numeric
  if (proportion_nas <= threshold) {
    output <- suppressWarnings(
      as.numeric(char)
      )
    return(output)
  }
  # if threshold exceeded message and exit
  if (na_ratio > threshold) {
    message("proportion_nas = ", proportion_nas, 
            " which exceeds threshold of ", threshold,
            "; returning char")
    return(char)
  }
}