# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))
x1 = input[1]
v1 = input[2]
x2 = input[3]
v2 = input[4]
#print(x1)
#print(v1)
#print(x2)
#print(v2)

FUNjump = function(x1, v1, x2, v2){
  n = (x2 - x1) / (v1 - v2)
  out = ifelse(n>=1 &  n %% as.integer(n)==0 & !is.infinite(n), "YES", "NO")
  return(out)
}

cat(FUNjump(x1, v1, x2, v2))


