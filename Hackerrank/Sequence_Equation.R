# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))
n = input[1]
p = input[2:length(input)]

for(i in 1:n){
  p1 = which(p == i)
  p2 = which(p == p1)
  
  cat(p2, sep='\n')
}
