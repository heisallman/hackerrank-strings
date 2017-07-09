import Foundation;

// Enter your code here

let n = Int(readLine()!)!
var b = readLine()!

let result = (b.characters.count - b.replacingOccurrences(of: "010", with: "").characters.count) / 3
print(result)
