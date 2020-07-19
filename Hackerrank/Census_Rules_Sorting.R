rules = c('{native-country=United-States,capital-gain=None}=>{capital-loss=None}',
          '{capital-gain=None,capital-loss=None}=>{native-country=United-States}',
          '{native-country=United-States,capital-loss=None}=>{capital-gain=None}')
arrangingRules <- function(rules) {
  # Write your code here
  library(dplyr)
  dt =  read.csv(url("https://s3.amazonaws.com/istreet-questions-us-east-1/443606/census.csv"))
  
  dtc <- data.frame(lapply(dt, as.character), stringsAsFactors=FALSE)
  dtc1 = as.character(dtc[1,])
  dtc1 = gsub("\\=.*", "", dtc1)
  names(dt) = dtc1
  confidencelist = c()
  for(i in 1:length(rules)){
    r1 = rules[i]
    r1a = sub("\\=>.*","", r1)
    r1b = sub(".*\\=>","", r1)
    
    r1a1 = sub("\\{","", r1a)
    r1a1 = sub("\\}","", r1a1)
    r1a1 = unlist(strsplit(r1a1, split=","))
    
    r1b1 = sub("\\{","", r1b)
    r1b1 = sub("\\}","", r1b1)
    r1b1 = unlist(strsplit(r1b1, split=","))
    
    
    r1a1cols = gsub("\\=.*", "", r1a1)
    r1b1cols = gsub("\\=.*", "", r1b1)
    
    r1a1dt = data.frame(lapply(r1a1, function(x) t(data.frame(x))))
    names(r1a1dt) = r1a1cols
    
    dta = left_join(r1a1dt, dt)
    r1a1support = nrow(dta)/nrow(dt)
    r1b1dt = data.frame(lapply(r1b1, function(x) t(data.frame(x))))
    names(r1b1dt) = r1b1cols
    dtb = left_join(r1b1dt, dt)
    r1b1support = nrow(dtb)/nrow(dt)
    
    r1confidence = r1a1support / r1b1support
    confidencelist = append(confidencelist, r1confidence)
  }
  
  dataout = data.frame(rules, confidencelist) %>% arrange(confidencelist)
  names(dataout) = c('rules', 'confidence')
  dataprint = as.character(dataout$rules)
  return(dataprint)
  
}
out1 = arrangingRules(rules)
