# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))

p=input[1]
d=input[2]
m=input[3]
s=input[4]

rem = s-p
out = c(rem)
i=1
while(rem>=m){
  p1 = p-d*i
  p1 = ifelse(p1<m, m, p1)
  rem = rem - p1
  out = append(out, rem)
  i=i+1
  
}
if(rem<0){
  out1 = length(out)-1
} else {out1 = length(out)}


cat(out1)
