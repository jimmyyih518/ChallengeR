# Enter your code here. Read input from STDIN. Print output to STDOUT

f=file('stdin')
open(f)
input = unlist(strsplit(readLines(f, n=-1), split=' '))
n = as.numeric(input[1])
arr = input[2:length(input)]
alphabet = letters
s=arr
FUNgem = function(s){
  out2 = c()
  for(i in alphabet){
    out1 = c()
    for(j in s){
      jsplit = unlist(strsplit(j, split=''))
      if(i %in% jsplit){
        out1 = append(out1, i)
      }
    }
    if(length(out1)==length(s)){
      out2 = append(out2, i)
    }
  }
  return(length(out2))  
}


cat(FUNgem(s), sep="\n")
