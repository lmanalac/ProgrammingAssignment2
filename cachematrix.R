# Version created by Luis Manalac
# Type "testmatrix()" to see demo

# Step 1 -- Do the assignment in Pseudo-Code

## makeCacheMatrix() is passed a Square Matrix, which it creates a "Global"
## variable for with a value for the Inverse of the Square Matrix.
## Initially the Inverse is Set to Null, but can be set to a Value using a 
## Member function.
## Once the Inverse has been set to non-Null, the Inverse does not need to be 
## computed again.
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  print("makeCacheMatrix():This is the Matrix I received")
  print(x) 
  
  m<-NULL
  
  set <-function(y) {
    x<<-y
    m<<-NULL
  }
  get <-function() x
  setinverse <-function(inverse) m <<-inverse
  getinverse <-function() m
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## This function is will return the Inverse of Matrix X
        ## However, before compute the Inverse of X, check if it has already been Cached, and if so, return the Cached Copy
  
        print("cacheSolve():This is the Matrix I received")
        print(x$get())
  
        #print("cacheSolve():Computing Inverse of the Matrix")
        #y<-solve(x)
        #print(y)
        m <- x$getinverse()
        # m is inverse matrix of x
        # if m has been computed before return m not null
        if (!is.null(m)) {
             message("cacheSolve():getting cached data")
             return(m)
        }
        message("cacheSolve():computing inverse")
        # otherwise, compute inverse of x using solve
        data<-x$get()
        m <- solve(data)
        x$setinverse(m)
        m
        
  
}      

testmatrix<-function()
{ 
  print("testmatrix():1. Start w/ a Square Matrix")
  print("testmatrix()")
  print("testmatrix():This is my Test Matrix")
  x<-matrix(c(1,2,3,4),2,2)
  print(x)
  
  print("testmatrix():2. Create a Global Variable that contains both the Matrix and its Inverse.")
  print("   Initially the Inverse will be NULL")
  print("testmatrix():Calling makeCacheMatrix()")
  x_global<-makeCacheMatrix(x)
  print("testmatrix():Set Value of x_global$get() to Square Matrix")
  x_global$set(x)
  print(x_global$get())
  
  
  print("Calling cacheSolve()")
  ##cacheSolve(x)
  print("testmatrix():3. Call cacheSolve() for the first time ")
  print(cacheSolve(x_global))
  
  print("testmatrix():4. Call cacheSolve() for the second time ")
  print(cacheSolve(x_global))
  
}

