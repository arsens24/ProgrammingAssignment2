## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inversproperty <- NULL
  
  set <- function(y) {
    x <<- y
    inversproperty <<-NULL
  }
  
  
  get <- function() {
    x
  }
  
  setinverse <- function(inverse) {
    inversproperty <<- inverse
  }
  
  getinverse <- function() {
    inversproperty
  }
  
  
  list(set = set, get = get,
       setinverse = setinverse,
       getInverse = getinverse)
  
}
