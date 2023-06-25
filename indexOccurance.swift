/*
    28. Find the Index of the First Occurrence in a String
    Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

    Example 1:

    Input: haystack = "sadbutsad", needle = "sad"
    Output: 0
    Explanation: "sad" occurs at index 0 and 6.
    The first occurrence is at index 0, so we return 0.

    Example 2:

    Input: haystack = "leetcode", needle = "leeto"
    Output: -1
    Explanation: "leeto" did not occur in "leetcode", so we return -1.
func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
        return 0
    }
    
    if haystack.count < needle.count {
        return -1
    }
    
    let haystackLength = haystack.count
    let needleLength = needle.count
    
    for i in 0...(haystackLength - needleLength) {
        let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
        let endIndex = haystack.index(startIndex, offsetBy: needleLength)
        let substring = haystack[startIndex..<endIndex]
        
        if substring == needle {
            return i
        }
    }
    
    return -1
}

*/

import Foundation

class stringOccurance {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if let range = haystack.range(of: needle) {
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        } else {
            return -1
        }
    }
}



let occurance = stringOccurance()

occurance.strStr("Developer", "Dev")
