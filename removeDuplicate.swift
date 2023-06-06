/*   
*     Date: 06/06/2023
*     LeetCode: Easy
*     Remove duplicate from sorted Array
*
*/

class RemoveDuplicate {
    func removeDuplicate(list: inout [Int]) -> Int{
        var index:Int = 0
        if list.count == 0 || list.count == 1{
            return list.count
        }
        for item in 1..< list.count{
            if item[i] != list[index]{
                index += 1
                list[index] = num[i]
            }
        }
        return index + 1
    }
}

let list = [9 , 1, 1, 2, 5, 8]

let obj: RemoveDuplicate = RemoveDuplicate()
obj.removeDuplicate()
