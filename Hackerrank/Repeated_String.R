# Enter your code here. Read input from STDIN. Print output to STDOUT
f <- file("stdin")
open(f)

s = as.character(readLines(f, n = 1))
n = as.numeric(readLines(f, n = 1))

f1 = function(s, n){
  
  repnum_1 = floor(n / nchar(s))
  
  counter = lengths(regmatches(s, gregexpr("a", s)))
  counter = counter*repnum_1
  
  rem_count = n %% nchar(s)
  rem_s1 = substring(s, 1, rem_count)
  rem_counter = lengths(regmatches(rem_s1, gregexpr("a", rem_s1)))
  
  counter = counter + rem_counter
  
  cat(format(counter, scientific = F))
}

f1(s, n)
