# Silent Failure in R Data Frame Subsetting
This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors of column names.  If any of the specified column names are missing, the subsetting operation fails silently, instead of producing an error or warning. This can lead to hard-to-debug issues.

The `bug.r` file contains the buggy code. The `bugSolution.r` file shows a corrected version that handles missing column names gracefully.

## Bug
The issue occurs when using `[` to subset a data frame when the provided column names don't all exist in the data frame.  R will silently ignore missing columns rather than reporting an error.

## Solution
The solution uses `dplyr::select()` with `all_of()`. This explicitly handles the potential for missing columns, throwing an error if any are missing and preventing silent failures.