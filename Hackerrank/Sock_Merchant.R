# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)


n = as.numeric(readLines(f, n = 1))
ar = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))

f1 = function(n, ar){
  ar_out = rep(NA, n)
  ar_rem3 = sort(ar)
  for(i in 1:n){
    color = ar_rem3[i]
    ar_rem1 = ar_rem3
    ar_rem1[i] = NA
    
    m1 = match(color, ar_rem1)
    if(is.na(m1)){
      ar_rem2 = ar_rem3
      ar_out = ar_out
    } else {
      ar_out[i] = color
      
      
      ar_rem3[i] = NA
      ar_rem3[m1] = NA
    }
    
  }
  #print(ar_out)
  ar_out = na.omit(ar_out)
  
  cat(length(ar_out))
  
}

f1(n, ar)

