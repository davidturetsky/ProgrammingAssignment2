## It is my intent to submit the real function requested
## that creats a matrix for the inversion process
## then solving the inverse of the matrix from the cache

## Create the matrix to cache

makeCacheMatrix <- function(x = matrix()) {
        cm <- function(y) {
                x <<- y
        }
        get <- function() x

}


## A function that returns the inverse of the matrix x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- cm(x)
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(x)

        return(m)
}
