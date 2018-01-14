

##create special matrix to cache the inverse of matrix
##sets the value and clear the cache
makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set <- function(y) {
  x<<-y
  i<<-Null
}

##function to get the value of the matrix
get<-function()x
setinverse<-function(inverse) i <<-inverse
getinverse<-function() i
list(set=set,
     get=get,
     setinverse=setinverse,
     getinverse=getinverse)
}
## This function computes the inverse of the special matrix 
## cachesolve retrives the inverse from cache
## If matrix has not been changed and inverse was already calculated


cacheSolve <- function(x, ...) {
  i<-x$getinverse()
  if(!is.null(i)) {
    message ("getting cached data")
return(i) 
}
  
        ## Return a matrix that is the inverse of 'x'

data<-x$get()
i<-solve(data)
x$setinverse(i)
i
}
