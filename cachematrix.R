## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL ##placeholder for inverse
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setinv <- function(inv) minv <<- inv
  getinv <- function() minv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(is.null(inv)) {
    inv <- solve(x$get())
    x <- x$setinv(inv)
  } else {
    return(inv)
  }
  inv
        ## Return a matrix that is the inverse of 'x'
}
