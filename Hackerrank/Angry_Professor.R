# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

n = strsplit(readLines(f, n = -1), split=" ")
cases = as.numeric(n[1])

for(i in 1:cases){
  #print(i)
  selrows1 = i*2
  selrows2 = i*2+1
  l1 = as.numeric(unlist(n[selrows1]))
  l2 = as.numeric(unlist(n[selrows2]))
  #print(l1)
  #print(l2)
  n1 = l1[1]
  k1 = l1[2]
  ar = sort(l2)
  #print(k1)
  #print(n1)
  #print(ar)
  
  if(length(which(ar<=0))>=k1){
    out1 = "NO"
  } else {out1 = "YES"}
  
  
  cat(out1, sep="\n")
}
