## Put comments here that give an overall description of what your
## functions do
 # Computing the inverse of a square matrix using cached values if exist.

## Write a short comment describing this function
# receives a matrix and return a list of functions with cached values
makeCacheMatrix <- function(x = matrix()) {
    dw <- NULL
    set <- function(y) {
        x <<- y
        dw <<- NULL
    }
    get <- function() x
    setMatrix <- function(inv) dw <<- mat_inv
    getMatrix <- function() dw
    list(set = set, get = get, setinverse = setMatrix, getinverse = getMatrix)  
}


## Write a short comment describing this function
# recieves a matrix, if inverse value exists in cache, return it, otherwise apply inverse and sets cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    mat_inv <- x$getMatrix()
    if(!is.null(mat_inv)) {
        message("getting cached data")
        return(mat_inv)
    }
    data <- x$get()
    mat_inv <- solve(data, ...)
    x$setMatrix(mat_inv)
    mat_inv  
}
