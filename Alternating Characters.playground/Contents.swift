import Foundation;

// Enter your code here

func alternatingCharacters(_ input: String) -> Int {
    
    var deletionCount = 0
    let charAB = Array(input.characters)
    
    for (index,character) in charAB.enumerated() {
        if index < charAB.count - 1 {
            if character == charAB[index + 1] {
                deletionCount += 1
            }
        }
    }
    return deletionCount
}


let n = Int(readLine()!)! // Number of test cases

for _ in 1 ... n { // Loop from 1 to n
    let line = readLine()! // Read a single line
    print(alternatingCharacters(line))
    // do something with input
}
