import Foundation;

// Enter your code here

let hackerrank = Array("hackerrank".characters)

func hackerrankFunction(_ inputString: String) -> String {
    
    var hackerrankIndex = 0
    let input = Array(inputString.characters)
    
    for char in input where hackerrankIndex < hackerrank.count {
        if char == hackerrank[hackerrankIndex] {
            hackerrankIndex += 1
        }
    }
    return hackerrankIndex == hackerrank.count ? "YES" : "NO"
}


let n = Int(readLine()!)! // Number of test cases

for _ in 1 ... n { // Loop from 1 to n
    let line = readLine()! // Read a single line
    // do something with input
    
    print(hackerrankFunction(line))
}


