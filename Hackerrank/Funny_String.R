# Enter your code here. Read input from STDIN. Print output to STDOUT
library(dplyr)
f=file('stdin')
open(f)
input = unlist(strsplit(readLines(f, n=-1), split=' '))
q = as.numeric(input[1])
arr = input[2:length(input)]

FUNfs = function(s){
  s1 = unlist(strsplit(s, split=''))
  s2 = rev(s1)
  
  s1a = unlist(lapply(s1, utf8ToInt))
  s2a = unlist(lapply(s2, utf8ToInt))
  
  dt = data.frame(s1a = s1a, s2a = s2a)
  dt$diff1 = abs(lead(dt$s1a) - dt$s1a)
  dt$diff2 = abs(lead(dt$s2a) - dt$s2a)
  
  adj1 = na.omit(dt$diff1)
  adj2 = na.omit(dt$diff2)
  
  if(all(adj1==adj2)){
    out1 = "Funny"
  } else {out1 = "Not Funny"}
  return(out1)
  
}

for(i in 1:length(arr)){
  s = arr[i]
  cat(FUNfs(s), sep="\n")
}
