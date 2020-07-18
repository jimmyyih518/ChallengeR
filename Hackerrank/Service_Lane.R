# Enter your code here. Read input from STDIN. Print output to STDOUT

f=file('stdin')
open(f)
input = as.numeric(unlist(strsplit(readLines(f, n=-1), split=' ')))

n= input[1]
t=input[2]
lane= input[3:(n+2)]

for(i in 0:(t-1)){
  sel=c((i*2+(n+3)), (i*2+(n+4)))
  en1 = input[sel[[1]]] + 1
  ex1 = input[sel[[2]]] + 1
  slane = lane[en1:ex1]
  minw = min(slane)
  cat(minw, sep="\n")
  
}


