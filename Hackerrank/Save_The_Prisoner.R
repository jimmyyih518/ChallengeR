# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

options(scipen=999)
#t = as.numeric(readLines(f, n = 1))
#data = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))
t = unlist(strsplit(readLines(f, n = -1), split=" "))
cases = as.numeric(t[[1]])
t = t[-1]
#print(cases)

for(i in 0:(cases-1)){
  start = i*3+1
  n=as.numeric(t[start])
  m=as.numeric(t[(start+1)])
  s=as.numeric(t[(start+2)])
  
  saveThePrisoner = function(n, m, s){
    
    m_rem = m %% n
    out = (s + m_rem) - 1
    if(out>n){out = out %% n}
    if(out==0){out = n}
    
    return(out)
  }
  
  cat(saveThePrisoner(n, m, s), '\n')
}

