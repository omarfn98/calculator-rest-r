# plumber.R

library(plumber)
source("calculator.R")  # Reuse logic

#* @apiTitle Sum Calculator API
#* @apiDescription Adds comma-separated numbers and returns a sum

#* Add numbers from a comma-separated list
#* @param operands Comma-separated numeric values
#* @get /calculator/add
#* @json
function(operands = "") {
  tryCatch({
    result <- calculate_sum(operands)
    list(sum = result)
  }, error = function(e) {
    list(error = "Invalid input. Please enter comma-separated numeric values.")
  })
}
