convert_char_to_numeric <- function(char = NULL, threshold = .8) {
  sum_nas <- sum(is.na(as.numeric(char)))
  na_ratio <- sum_nas / length(char)
  if (na_ratio <= threshold) {
    output <- as.numeric(char)
    return(output)
  }
  if (na_ratio > threshold) {
    message("na_ratio = ", na_ratio, " which exceeds threshold of ", threshold,
            "; returning char")
    return(char)
  }
}