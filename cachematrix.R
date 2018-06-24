## Put comments here that give an overall description of what your
## functions do

## Makes a Cached Matrix for storing inverse and original vales

makeCacheMatrix <- function(x = matrix()) {
  ##placeholder for inverse
  minv <- NULL 
  ## sets matrix as y and makes inverse Null placeholder
  set <- function(y) {  
    x <<- y
    minv <<- NULL
  }
  ## returns matrix
  get <- function() x
  ## sets inverse
  setinv <- function(inv) minv <<- inv
  ## return inverse
  getinv <- function() minv
  ## Function calls for x
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Either returns stored inv value of matrix or calculates inverse and stores it

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  ## no stored matrix
  if(is.null(inv)) {
    inv <- solve(x$get())
    x <- x$setinv(inv)
  ## stored matrix case
  } else {
    return(inv)
  }
        ## Return a matrix that is the inverse of 'x'
}
