# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file('stdin')
open(f)
input = unlist(strsplit(readLines(f, n=-1), split=' '))
n=as.numeric(input[1])
arr = input[2:length(input)]

FUNremove = function(s){
  
  s1 = unlist(strsplit(s, split=''))
  s2 = unique(s1)
  if(length(s2)==1){
    s1 = s2
  } else {
    i=2
    while(i<=length(s1)){
      if(s1[i]==s1[(i-1)]){
        s1=s1[-i]
      } else {
        i=i+1
      }
    }
  }
  return(s1)
}
for(j in 1:n){
  s = arr[j]
  out = length(unlist(strsplit(s, split='')))-length(FUNremove(s))
  cat(out, sep="\n")
}