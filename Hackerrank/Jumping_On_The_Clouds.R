# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)


n = as.numeric(readLines(f, n = 1))
ar = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))
f1 = function(n, ar){
  totalsteps = 1
  counter = 0
  while(totalsteps <= n-2){
    cur_ar = ar[totalsteps]
    next1_ar = ar[totalsteps+1]
    
    next2_ar = ar[totalsteps+2]
    
    if(next1_ar == 0 & next2_ar == 0){
      totalsteps=totalsteps+2
    }
    if(next1_ar == 0 & next2_ar == 1){
      totalsteps=totalsteps+1
    }
    if(next1_ar == 1){
      totalsteps=totalsteps+2
    }
    
    
    #print(totalsteps)
    counter = counter+1
  }
  
  if(totalsteps<n){
    counter = counter+1}
  
  cat(counter)
}


f1(n, ar)
