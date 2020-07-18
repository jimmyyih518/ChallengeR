##Note: This code works for most of the test cases but times out on a couple of the long ones
##requires further optimization or re-write to get a full submission

# Enter your code here. Read input from STDIN. Print output to STDOUT


f <- file("stdin")
open(f)

input = unlist(strsplit(readLines(f, n = -1), split=" "))

n=as.numeric(input[1])
str_list = input[2:length(input)]

library(dplyr)
dt = data.frame(letter = letters, value = c(1:26), stringsAsFactors = F)

FUNbig = function(str, dt){
  s1 = data.frame(letter = unlist(strsplit(str, split = '')), stringsAsFactors = F)
  snum = left_join(s1, dt)
  s2 = snum$value
  if(length(unique(s2))==1){
    out1 = FALSE
  } else {
    s2a = s2
    i=length(s2)
    while(i>1 & ifelse(length(s2[(i-1)]>=s2[i])>0,s2[(i-1)]>=s2[i],FALSE)){
      i = i-1
    }
    if(i<=1){
      out1 = FALSE
    } else {
      
      j=length(s2)
      while(s2[j]<=s2[(i-1)]){
        j = j-1
      }
      
      temp = s2[(i-1)]
      s2[(i-1)] = s2[j]
      s2[j] = temp
      
      j = length(s2)
      while(i < j){
        temp = s2[i]
        s2[i] = s2[j]
        s2[j] = temp
        i = i+1
        j = j-1
      }
      out1 = TRUE
    }
  }
  if(out1 == TRUE){
    s3 = data.frame(value = s2)
    s3 = left_join(s3, dt)
    out2 = s3$letter
    return(out2)
  } else {
    return('no answer')
  }
}

for(m in 1:n){
  str = str_list[m]
  cat(FUNbig(str, dt), sep="")
  cat("\n")
}
