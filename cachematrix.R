## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix that caches its inverse
makeCacheMatrix <- function(x = matrix()) {
        # Saves the inverse in thist variable
        i <- NULL
        
        # Set: assign matrix value and set the inverse as NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        
        # Get: returns the matrix value
        get <- function() x
        
        # Save the inverse matrix
        setinverse <- function(inverse) i <<- inverse
        
        # Get the inverse matrix
        getinverse <- function() i
        
        #
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This function invert a matrix. But first it looks if the matrix has already
## an inverted version calculated
cacheSolve <- function(x, ...) {
        ## Test for inverted matrix and return it if available
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}