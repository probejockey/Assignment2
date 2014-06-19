makeCacheMatrix <- function(x = numeric()) {
 #makeCacheMatrix: This function creates a special "matrix" 
 #object that can cache its inverse.
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolv <- function(sol) m <<- sol
  getsolv <- function() m
  list(set = set, get = get, setsolv = setsolv, getsolv = getsolv)
  
  

  
}

cacheSolve <- function(x){
# cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse t has already been 
#calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.
  print("incachsolve")
  
  m <- x$getsolv()
  
  print("after  get")
  
  
  print(m)
  
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  #v <- x$get()
  #print(x$get())
  
  m <- solve(x$get())
  print("printing m")
  print(m)
  x$setsolv(m)
  m
  
}