

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

pickingNumbers <- function(a) {
  # Write your code here
  a=sort(a)
  outlist = list()
  
  for(i in 1:length(a)){
    
    lname = paste(i, 'list', sep='')
    lout = c(a[i])
    val = a[i]
    #print(val)
    
    for(j in 1:length(a)){
      
      if(abs(a[j]-a[i])<=1 & i!=j){
        lout = append(lout, a[j])
        if(abs(max(lout)-min(lout))<=1){
          outlist[[i]]=lout}
      }
    }
    assign(lname, lout)
    
    
  }
  
  o1 = as.integer(c(lapply(X = outlist, FUN = length)))
  return(max(o1))
  
}

stdin <- file('stdin')
open(stdin)

fptr <- file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))

a <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
a <- as.integer(a)

result <- pickingNumbers(a)

writeLines(as.character(result), con = fptr)

close(stdin)
close(fptr)
