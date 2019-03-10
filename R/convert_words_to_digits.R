#' Convert English words for numbers into digits
#' @param words words to turn into digits
#' @param return_numeric logical, set to true if output should be converted to numeric 
#' @description Convert English number words (e.g. one, two, three) into digits (1, 2, 3).
#' @return character unless \code{return_numeric == TRUE} then numeric
#' @export
convert_words_to_digits <- function(words = NULL,
                                    return_numeric = NULL) {
  # replace words with digits
  output <- as.character(words)
  output <- gsub("zero", 0, output)
  output <- gsub("one", 1, output)
  output <- gsub("two", 2, output)
  output <- gsub("three", 3, output)
  output <- gsub("four", 4, output)
  output <- gsub("five", 5, output)
  output <- gsub("six", 6, output)
  output <- gsub("seven", 7, output)
  output <- gsub("eight", 8, output)
  output <- gsub("nine", 9, output)
  # return as numeric if specified
  if (!is.null(return_numeric) && return_numeric == TRUE) {
    output <- as.numeric(output)
  }
  return(output)
}