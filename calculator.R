# calculator.R

calculate_sum <- function(operands) {
  if (is.null(operands) || operands == "") {
    return(0)
  }

  nums <- suppressWarnings(as.numeric(unlist(strsplit(operands, ","))))
  if (any(is.na(nums))) stop("Invalid input")
  sum(nums)
}
