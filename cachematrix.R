# makeCacheMatrix Creates a list that stores both a matrix & its inverse

# Function to create list matrix & cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        #store caches inverse matrix
        inv <- NULL

        #create matrix
        set <- function(y){
                x <<- y
                inv <<- NULL
        }

        #retrieve matrix value
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


# Function to compute/retrieve catched inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()

        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }

        #Compute inverse 
        data <- x$get()
        inv <- solve(data, ...)

        #Cache the inverse
        x$setInverse(inv)

        #return inverse
        inv
}
