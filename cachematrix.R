## Hello! This function can be used to create a matrix in cache, 
## e.g. a <- makeCacheMatrix, then a$set(matrix(1:10, 5, 5))  which sets a matrix in cache memory
## You can type a$get() to get that matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix = getmatrix)
}


##after setting a matrix above, you would type something like cacheSolve(a) or whatever to generate its inverse.

cacheSolve <- function(x, ...) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix = getmatrix)
}
