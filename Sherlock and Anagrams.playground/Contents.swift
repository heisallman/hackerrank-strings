import Foundation;

// Enter your code here

let t = Int(readLine()!)!

func findSubstrings(_ input: String) -> Int {
    
    var s = Array(input.characters.map({ String($0) }))
    var result = Array<String>()
    var count = 0
    
    for j in 0..<s.count {
        for i in 0..<s.count where i + j < s.count{
            result.append(s[i...i+j].sorted().joined())
        }
    }
    
    let nsSet = NSCountedSet(array: result)
    
    for item in nsSet {
        switch nsSet.count(for: item) {
        case 1:
            break
            
        default:
            let i = nsSet.count(for: item)
            count += (i * i - i) / 2
        }
    }
    return count
}

for _ in 1...t {
    let input = readLine()!
    print(findSubstrings(input))
}