# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

input = as.numeric(unlist(strsplit(readLines(f, n = -1), split=" ")))

n=input[1]
ar=input[2:length(input)]

FUNeqa = function(n, ar){
  if(length(unique(ar))==length(ar)){ 
    return(length(ar)-1)
  } else {
    ar = sort(ar)
    aru = unique(ar)
    `%nin%` = Negate("%in%")
    ar_out = list()
    for(i in 1:length(aru)){
      val = aru[i]
      ar_rem = ar[ar %nin% val]
      ar_out$temp = ar_rem
      names(ar_out)[names(ar_out)=='temp'] = i
    }
    
    s1 = max(which(lengths(ar_out)==min(lengths(ar_out))))
    outval = ar_out[[s1]]
    
    ar_out2 = length(ar) - length(ar[ar %nin% outval])
    
    return(ar_out2)
  }
  
}

cat(FUNeqa(n, ar))
