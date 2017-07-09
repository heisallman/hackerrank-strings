import Foundation;

// Enter your code here

let n = Int(readLine()!)!

for _ in 1...n {
    let string1 = readLine()!
    let string2 = readLine()!
    
    let set1 = Set(Array(string1.characters).map({ String($0) }))
    let set2 = Set(Array(string2.characters).map({ String($0) }))
    
    print(set1.intersection(set2).count > 0 ? "YES" : "NO")
}