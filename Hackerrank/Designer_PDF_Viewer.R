# Enter your code here. Read input from STDIN. Print output to STDOUT

f <- file("stdin")
open(f)

a = as.numeric(unlist(strsplit(readLines(f, n = 1), split=" ")))
word = as.character(readLines(f, n = 2))

a=data.frame(letter = letters, value = a)


wlist = unlist(strsplit(word, split=''))

wdt = merge(data.frame(lw = wlist), a, by.x = 'lw', by.y='letter')
maxh = max(wdt$value)
maxl = nchar(word)

out = maxh * maxl

cat(out)
