## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL

        setMatrix <- function(y) {
                x <<- y
                invMatrix <<- NULL
        }

        getMatrix <- function() x                              #get the value of the Matrix
        setInverse <- function(inverse) invMatrix <<- inverse  #set the value of the invertible matrix
        getInverse <- function() invMatrix                     #get the value of the invertible matrix
        list(setMatrix = setMatrix, getMatrix = getMatrix,
                setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        nv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
