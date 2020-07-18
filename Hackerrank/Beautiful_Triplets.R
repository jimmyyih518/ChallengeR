# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))

n=input[1]
d=input[2]
ar=input[3:length(input)]

FUNbt = function(d, ar){
  out1 = 0
  for(i in 1:length(ar)){
    
    if(((ar[i]+d) %in% ar) & ((ar[i]+d*2) %in% ar)){
      out1=out1+1
    }
  }
  
  return(out1)
}

cat(FUNbt(d, ar))
