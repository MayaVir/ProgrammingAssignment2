## makecacheMatrix() and cacheSolve() functions used to create a matrix object that can cache its inverse 
## and calculate the inverse respectively

##  makeCacheMatrix() creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL # variable to store the inverse of given matrix
        # sets the matrix
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        #returns the matrix
        get <- function() x
        # sets inverse of the matrix 
        setinv <- function(solve) i <<- solve
        # returns inverse of the matrix x
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

## cacheSolve() computes inverse of the matrix returned by makeCacheMatrix().
## If inverse has already been calculated, it retrieves the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
