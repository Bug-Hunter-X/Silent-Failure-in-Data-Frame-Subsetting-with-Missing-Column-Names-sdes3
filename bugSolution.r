```r
# This corrected code uses dplyr::select() with all_of() to explicitly handle missing column names,
# throwing an error if any are missing.

library(dplyr)

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")

subset_df <- tryCatch({
  df %>% select(all_of(cols_to_select))
}, error = function(e) {
  message("Error: One or more specified columns are missing.")
  return(NULL)
})

print(subset_df)
```