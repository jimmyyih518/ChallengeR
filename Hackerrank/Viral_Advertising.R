# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)
n = as.numeric(readLines(f, n = 1))

viralAdvertising = function(n){
  
  Day = 1
  Shared = 5
  Liked = floor(5/2)
  Cumulative = 2
  for(i in 2:n){
    Day = i
    Shared = floor(Shared/2)*3
    Liked = floor(Shared/2)
    Cumulative = Cumulative + Liked
  }
  
  return(Cumulative)
}

cat(viralAdvertising(n))