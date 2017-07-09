import Foundation;

// Enter your code here

let n = Int(readLine()!)!

for _ in 1...n {
    let s = readLine()!
    let sMap = s.characters.map({ String($0) })
    print(Set(sMap).count)
}