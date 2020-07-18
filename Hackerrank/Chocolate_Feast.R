# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))
t = input[1]-1
ar=input[2:length(input)]

FUNchoc = function(money, cost, wrapper){
  n1 = floor(money/cost)
  n2 = floor(n1/wrapper)
  rem_wrapper = n1 %% wrapper + n2
  ntot = n1+n2
  if(rem_wrapper>=wrapper){
    while(rem_wrapper>=wrapper){
      n2 = floor(rem_wrapper/wrapper)
      rem_wrapper = floor(n2/wrapper) + n2
      ntot = ntot+n2
      
    }
    
  }
  return(ntot)
}

for(i in 0:t){
  money = ar[(i*3+1)]
  cost = ar[(i*3+2)]
  wrapper = ar[(i*3+3)]
  
  ntot = FUNchoc(money, cost, wrapper)
  cat(ntot, sep="\n")
}