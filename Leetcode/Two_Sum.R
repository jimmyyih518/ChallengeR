#Given array of integers, return indices of the two numbers such that they add up to a specific target.
#You may assume that each input would have exactly one solution, and you may not use the same element twice.

#Given Input array nums, integer target
nums = c(2, 7, 11, 15)
target = 9

#Solution
FUNtwosum = function(nums, target){
  for(i in 1:length(nums)){
    for(j in (i+1):length(nums)){
      if(nums[i]+nums[j]==target){
        return(c(i, j))
      }
    }
  }
}

FUNtwosum(nums, target)
