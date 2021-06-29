## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse_precomputed <- NULL
  set_inverse = function() inverse_precomputed <<- solve(x)
  get_inverse = function() inverse_precomputed
  list(matrix = x, 
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$get_inverse()
  if(is.null(inverse)) {
    x$set_inverse()
  }
  x$get_inverse()
}
