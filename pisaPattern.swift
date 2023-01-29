/*
Coding Challenge: The Geometric Tower of Pisa
A one liner in C++ (not exactly the most concise language)  - can you replicate this using your weapon of choice? It doesn't have to be a one liner!
Pattern: 1 2 4 8 16 32 ... 1073741824

*/


import Foundation

var exp:Double  = 0
for i in 0..<31{
   exp = pow(Double(2) , Double(i))
   print(String(repeating: " ",count: i), String(Int(exp)))
} 

