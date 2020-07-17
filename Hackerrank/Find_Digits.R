# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))
t=input[1]
ar=input[2:length(input)]

for(i in 1:t){
  n=ar[i]
  c1 = as.numeric(unlist(strsplit(as.character(n), split="")))
  d1 = n / c1
  d2 = d1 - as.integer(d1)
  d3 = na.omit(d2)
  d3 = d3[d3==0]
  
  cat(length(d3), sep="\n")
}
