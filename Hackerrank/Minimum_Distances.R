# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

input = unlist(strsplit(readLines(f, n = -1), split=" "))

n = as.numeric(input[1])
ar = as.numeric(input[2:length(input)])

FUNmindist = function(ar){
  dups = ar[duplicated(ar)]
  if(length(dups)==0){
    out1 = -1
  } else {
    dist_list = c()
    for(i in 1:length(dups)){
      ind1 = which(ar==dups[i])
      dist = max(ind1) - min(ind1)
      dist_list = append(dist_list, dist)
    }
    out1 = min(dist_list)
  }
  return(out1)
}

cat(FUNmindist(ar))
