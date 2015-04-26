## Put comments here that give an overall description of what your
## functions do
## My first function calculates the inverse of a matrix and caches it. 
## The second one checks whether the inverted matrix is in cached, if not it is 
## calculated.



## Write a short comment describing this function
## This funcion loads a matrix, which calculates its inverse with solve(), and 
## caches its inverse.


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function (solve) m <<- solve
        getinv <- function () m
        list(set = set, get = get, 
             setinv = setinv,
             getinv = getinv)
}
 


## Write a short comment describing this function
## This functions checks whether the inverted matrix is in cached, if it is the 
## case, I receive a message "getting cached data", if not it is 
## calculated. 


cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
