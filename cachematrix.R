## Creates a matrix capable of storing/caching its inverse
## The input matrix is cached in X
## the inverse is cached in m

makeCacheMatrix <- function(x = matrix()) {
m<- NULL                       ##Initialize m
y<- NULL                       ##Initialize y
  set<-function(y){            ##set function to cache matrix
  x<<- y #cache input
  m<<- NULL
}
  get<-function(){x}           ##gets the matrix x
  setsolve<-function(solve){m} ##Saves the inverse of m
  getsolve<-function(){m}      ##gets the inverse of m
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


