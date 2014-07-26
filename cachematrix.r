## 
## function makeCacheMatrix
## 1. Initialize the originalMtx variable with a NULL value
## 2. Store matrix value in to originalMtx in order to use it later
## 3. Use the solve() function which gives the inverse of the original matrix
## 4. Return  
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	originalMtx<<-x;
	inverseMtx<<-solve(originalMtx);
	inverseMtx;
}

## 
## function cacheSolve
## 1. Verify that matrix provided is not NULL and value provided is a matrix
## 2. Verify that matrix x provided is identical to the calculated in the makeCacheMatrix function 
## 3. If matrix provided to cacheSolve function is not null, is a matrix, and it is identical to 
##    the original matrix provided then original inverse matrix is returned.	   
## The safe and reliable way to test two objects for being exactly equal.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	if ((!is.null(x)) & (is.matrix(x)))
	{
		if(identical(x,originalMtx))
		{
			message("Inverse matrix");
			return(inverseMtx);
		}
		else
		{
			message("the matrix provided in to this function is different from the originally calculated");
		}
	}
	else
	{
		message("Invalid value provided... it is NULL or is not a matrix");
	}
}
