## Put comments here that give an overall description of what your
## functions do
# makeCatchMatrix: creates a data structure that stores both a matrix & its inverse
# cacheSolve: works with the data structure created by `makeCacheMatrix()` to calculate the inverse of a matrix


## Write a short comment describing this function
# Function to create special matrix object & cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse){
                inv <<- inverse
        }
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function
# Function to compute/retrieve catched inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
