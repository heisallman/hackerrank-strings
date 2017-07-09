import Foundation;

func gemstones(_ input: [String]) -> Int {
    
    var result = Set<Character>()
    
    for (index,_) in input.enumerated() {
        
        let rock = input[index]
        let set = Set(rock.characters)
        
        switch index {
        case 0:
            result = set
        default:
            result = result.intersection(set)
        }
    }
    return result.count
}


// Enter your code here
let n = Int(readLine()!)! // Number of test cases

var rocks = [String]()

for _ in 1 ... n { // Loop from 1 to n
    let line = readLine()! // Read a single line
    // do something with input
    rocks.append(line)
}

print(gemstones(rocks))