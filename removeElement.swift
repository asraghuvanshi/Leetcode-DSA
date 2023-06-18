/*
*
*     Leetcode : Easy
*     Date: 07/06/2023
*/
//  Solution 1
class Solution{


    func removeElement(_ nums: inout [Int] , _ val: Int) ->  Int{
        var i = 0 , j = 0;
        while( i < nums.count){
            if nums[i] == val{
                i += 1
            }
            else {
                nums[j] = nums[i]
                i += 1
                j += 1
            }
        }
        return j
    }
}


var arr = [10, 11, 9, 10, 11, 1, 2, 3, 4, 5]
var val = 10
let obj = Solution()
let result = obj.removeElement(&arr, val)
print(result)


// Solution 2
class Solution {
 func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
   nums = nums.filter { $0 != val }
    return nums.count
}
}
