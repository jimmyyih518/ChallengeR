# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))
t=input[1]
ar = input[2:length(input)]
h=1
FUNutree = function(h, n){
  if(n==0){
    h=h
  } else if(n==1){
    h=h*2
  } else if(n>1){
    for(i in 1:n){
      if(i %% 2 ==0){
        h=h+1
      } else if(i %% 2 !=0){
        h=h*2
      }
    }
  }
  return(h)
}

for(i in 1:t){
  n=ar[i]
  out1 = FUNutree(h, n)
  cat(out1, sep="\n")
}