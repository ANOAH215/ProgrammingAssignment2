## Function that creates cached matrix 

makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        
        set <- function(y){
                x <<- y
                inv <<- NULL
                }
        
        get <- function() x

        # stores inverse in cache
        setInverse <- function(inverse){
                inv <<- inverse
        }
        
        getInverse <- function() inv

        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        }



## Function that calculates inverse of matrix or
## returns previously calculated inverse.

cacheSolve <- function(x, ...){
        inv <- x$getInverse()

        #Returns cached results if available
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        
        data <- x$get()
        #solves inversion
        inv <- solve(data,...)

        #Caches the result
        x$setInverse(inv)

        inv
}
