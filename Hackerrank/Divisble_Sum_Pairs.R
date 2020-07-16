# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

l1 = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))
l2 = as.numeric(unlist(strsplit(readLines(f, n = 2), split=" ")))

n = l1[1]
k = l1[2]
ar = l2

FUNdivpair = function(n, k, ar){
  m=0
  for(i in 1:n){
    for(j in 1:n){
      s1 = ar[i]+ar[j]
      rem = s1 %% k
      if(i<j & rem==0){m = m+1}
    }
  }
  
  return(m)
}

cat(FUNdivpair(n, k, ar))

