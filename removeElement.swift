/*
*
*     Leetcode : Easy
*     Date: 07/06/2023
*/
//  Solution 1
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    var j = 0
    
    while i < nums.count {
        if nums[i] == val {
            i += 1
        } else {
            nums[j] = nums[i]
            i += 1
            j += 1
        }
    }
    
    return j
}


// Solution 2
class Solution {
 func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
   nums = nums.filter { $0 != val }
    return nums.count
}
}
