# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)
y=as.numeric(readLines(f, n = 1))

FUNsolvedate = function(y){
  if(y == 1918){
    out = '26.09.1918'
  } else if((y<=1917 & y%%4==0) | (y>1918 & y%%400==0 | (y%%4==0 & y%%100!=0))){
    out = paste('12.09.',y, sep='')
  } else {out = paste('13.09.', y, sep='')}
  return(out)
}
cat(FUNsolvedate(y))
