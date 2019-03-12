#' Copy a file to a new directory and give it a new name
#' @param file_to_move full path of file to copy
#' @param new_dir directory to copy file
#' @param new_name new name for file to be copied
#' @return nothing
#' @export
copy_file_and_rename <- function(file_to_move = NULL,
                                 new_dir = NULL,
                                 new_name = NULL) {
  new_path <- paste0(new_dir, "/", new_name)
  file.copy(file_to_move, new_path, overwrite = TRUE)
}