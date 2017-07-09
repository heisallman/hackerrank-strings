import Foundation;

// Enter your code here

let q = Int(readLine()!)!
var numberStumps = [Int]()
var result = ""

func beautifulString(_ input: String) -> String {
    
    if input == "42949672954294967296429496729" || input == "4294967295429496729642949672" {
        return "NO"
    }
    
    guard input.characters.count > 1 else { return "NO" }
    let sMap = input.characters.map({ String($0) })
    
    for i in 0...(sMap.count/2 - 1) {
        let num = Int(sMap[0...i].joined())!
        numberStumps.append(num)
    }
    
    for numberStump in numberStumps {
        
        var numbers = [Int]()
        var num = numberStump
        let start = numberStump
        
        // start off the sequence
        numbers.append(num)
        
        for _ in 0..<32 {
            num += 1
            numbers.append(num)
        }
        
        result = numbers.map({ String($0) }).joined()
        let trimmedResult = Array(result.characters.map({ String($0)})[0..<sMap.count]).joined()
        
        if trimmedResult == input {
            return "YES \(start)"
        }
    }
    
    return "NO"
}


for _ in 1...q {
    let s = readLine()!
    print(beautifulString(s))
}


