## Pulls the matrix created in makecachematrix
## and computes the inverse if it doesnt already
## exist in cache, finally returning that inverse matrix

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
print(m)
  if(!is.null(m)) {  ##If M isn't null, retrieve cache
    print("I dont think this works")
    return(m)
  }
  print("I didn't cache")
  ## If it isn't cached then find the inverse and display
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}

