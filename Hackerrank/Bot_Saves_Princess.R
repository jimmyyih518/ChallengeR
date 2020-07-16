# Enter your code here. Read input from STDIN. Print output to STDOUT
# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file('input')
open(f)
input <- readLines(f, n=-1)

library(dplyr)
#input = c("3", "---", "-m-", "p--")
n=as.numeric(input[1])
m_input = input[2:length(input)]
for(i in 1:n){
  dt_temp = data.frame(v = unlist(strsplit(m_input[i],'')))
  names(dt_temp) = paste("v",i, sep='')
  if(exists("dtm")){
    dtm = cbind(dtm, dt_temp)
  }
  if(!exists("dtm")){
    dtm = dt_temp
  }
  
}

dtm2 = as.matrix(t(dtm))
ploc = c(which(dtm2=='p', arr.ind=TRUE))
mloc = c(which(dtm2=='m', arr.ind=TRUE))
prow = ploc[1]
pcol = ploc[2]
mrow = mloc[1]
mcol = mloc[2]
xmove = prow - mrow
zmove = pcol - mcol

xmove2 = case_when(
  xmove > 0 ~ "LEFT",
  xmove < 0 ~ "RIGHT"
)
zmove2 = case_when(
  zmove > 0 ~ "UP",
  zmove < 0 ~ "DOWN"
)

final_moves = rep(c(xmove2, zmove2), abs(xmove))
cat(final_moves, sep="\n")