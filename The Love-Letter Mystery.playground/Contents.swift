import Foundation;

// Enter your code here

let queries = Int(readLine()!)!

for _ in 1...queries {
    let string = readLine()!
    let input = Array(string.characters).map({ String($0).unicodeScalars.first!.value }).map({ Int($0) })
    let count = string.characters.count
    var base = [Int]()
    var comparison = [Int]()
    var result = 0
    
    if string.characters.count % 2 == 0 {
        base = Array(input[0..<(count / 2)])
        comparison = Array(input[(count / 2)..<count])
        
    } else {
        base = Array(input[0..<(count / 2)])
        comparison = Array(input[((count / 2) + 1)..<count])
    }
    for (index,item) in base.enumerated() {
        result += abs(item - comparison.reversed()[index])
    }
    print(result)
}