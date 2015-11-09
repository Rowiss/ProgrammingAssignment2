## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# the function makeCacheMatrix is calculating the inverse of the matrix 'x' and then story it in catch
makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setsolve <- function(solve ) s <<- solve
    getsolve <- function() s
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function
# catch solve stores the value of the inverse of the matix and is able to recall it
cacheSolve <- function(x, ...) {
    s <- x$getsolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve (data, ...)
    x$setsolve(s)
    s
        ## Return a matrix that is the inverse of 'x'
}
