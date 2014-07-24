## The function makeCacheMatrix takes the input matrix and outputs a list of four
## other functions that can be called from within the cacheSolve function. The 
## set matrix function inverts the matrix.

## Function outputs a list of four other functions that can be called from cacheSolve 

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
		}
	get <- function()x
	setmatrix <- function(solve)m <<- solve
	getmatrix <- function()m
	list (set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)

}


## Function checks to see if matrix is already cached and calls the relevant function from makeCacheMatrix.

cacheSolve <- function(x, ...) {
	m <- x$getmatrix()
	if(!is.null(m)) {
		message("get cached data")
		return(m)
		}
	data <- x$get()
	m <- solve(data, ...)
	x$setmatrix(m)
	m
}
        ## Return a matrix that is the inverse of 'x'
