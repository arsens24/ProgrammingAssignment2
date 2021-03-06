## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function("makeCacheMatrix") is creating  matrix object that cache its inverse matrix
## containing 4 other functions

makeCacheMatrix <- function(x = matrix()) {
  
  inversproperty <- NULL
  
  set <- function(y) {
    x <<- y
    inversproperty <<-NULL
  }
  
  
  get <- function() {
    x
  }
  ## get matrix
  
  setinverse <- function(inverse) {
    inversproperty <<- inverse
  }
  ## set inverse of the matrix
  
  getinverse <- function() {
    inversproperty
  }
  ## return the inverse 
  
  list(set = set, get = get,
       setinverse = setinverse,
       getInverse = getinverse)
  
}


## Write a short comment describing this function

## This function ("cacheSolve") is computing the inverse of the matrix from "makeCacheMatrix"
## inverse has already been calculated from above but, "cacheSolve" has to retrieve inverse from the cache
## contatining 3 other functions

cacheSolve <-function(x, ...){
      ## Return a matrix "X"
      
  inversproperty<-x$getinverse()
  
  if(!is.null(inversproperty)) {
    
    message("getting cached data")
    return(inversproperty)
  
  }
  
  data <- x$get()
  ## matrix from object
  
  inversproperty <- solve(data,...)
  ## compute inverse matrix
  
  x$setinverse(inversproperty)
  ##set inverse to object
  
  inversproperty
  ## return value
}
