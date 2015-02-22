# Version created by Luis Manalac
# Step 1 -- Do the assignment in Pseudo-Code

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## This function is will return the Inverse of Matrix X
        ## However, before compute the Inverse of X, check if it has already been Cached, and if so, return the Cached Copy
  
        print("cacheSolve():This is the Matrix I received")
        print(x)
  
        print("cacheSolve():Computing Inverse of the Matrix")
        y<-solve(x)
        print(y)
        # m <- x$getinverse()
        # m is inverse matrix of x
        # if m has been computed before return m not null
        # if (!is.null(m)) {
        #     message("getting cahced data")
        #     return(m)
        # }
        # otherwise, compute inverse of x using solve
        # data<-x$get()
        # m <- solve(data,....)
        # x$setinverse(m)
        # m
        
  
}      

testmatrix<-function()
{
  print("testmatrix()")
  print("testmatrix():This is my Test Matrix")
  x = matrix(c(1,2,3,4),2,2)
  print(x)
  print("Calling cacheSolve")
  cacheSolve(x)
}