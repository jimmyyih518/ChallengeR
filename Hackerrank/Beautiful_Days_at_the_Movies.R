# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

t = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))

i=t[1]
j=t[2]
k=t[3]



FUNbday = function(i, j, k){
  ar = c(i:j)
  ao = c()
  for(n in 1:length(ar)){
    val = ar[n]
    s1 = as.character(val)
    s2 = unlist(strsplit(s1, split=''))
    s3 = rev(s2)
    
    v1 = paste0(s3, collapse = "")
    v2 = as.integer(v1)
    
    ao[n] = ifelse(abs(val-v2)%%k==0,1,0)
    
  }
  
  return(ao)
}

out1 = FUNbday(i, j, k)

cat(sum(out1))
