#' Identify newest file in a directory
#' @param dir character directory to search for files; should not end with slash
#' @param pattern character regex pattern for files
#' @return character path to newest file
#' @export
identify_newest_file <- function(dir = NULL,
                                 pattern = "\\.") {
  # get files in the dir, make paths, return newest
  files <- list.files(path = dir, pattern = pattern)
  file_paths <- paste0(dir, "/", files)
  file_info <- file.info(file_paths)
  newest_file <- file_paths[file_info$mtime == max(file_info$mtime, na.rm = TRUE)]
  # verbose and return
  message(newest_file, " created at ", max(file_info$mtime))
  return(newest_file)
}