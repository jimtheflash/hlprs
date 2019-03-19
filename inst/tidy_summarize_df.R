tidy_summarize_df <- function(df = NULL,
                              na_rm = TRUE) {
  
  
  
  tidy_summaries <- lapply(
    df, function(x) {
      if (is.numeric(x)) {
        data.frame(Min = min(x, na.rm = na_rm),
                   Q1 = quantile(x, .25, na.rm = na_rm),
                   Mean = mean(x, na.rm = na_rm),
                   Median = median(x, na.rm = na_rm),
                   Q3 = quantile(x, .75, na.rm = na_rm),
                   Max = max(x, na.rm = na_rm),
                   NAs = sum(is.na(x)),
                   stringsAsFactors = FALSE)
      }
      if (!is.numeric(x))
    }
  )
  tidy_summaries_df <- do.call(rbind, tidy_summaries)
  return(tidy_summaries_df)
}