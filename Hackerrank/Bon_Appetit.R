# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

l1 = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))
l2 = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))

n=l1[1]
k=l1[2]+1
bill=l2[1:n]
b=l2[n+1]

billa = sum(bill[-k])/2
if(billa == b){
  out = 'Bon Appetit'
}
if(billa != b){
  out = b-billa
}

cat(out)
