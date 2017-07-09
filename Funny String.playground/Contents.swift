import Foundation;

// Enter your code here

func funnyString(_ input: String) -> Bool {
    
    var lineMap = Array(input.characters).map({
        String($0).unicodeScalars.first!.value
    })
    
    let lineMapReversed = Array(lineMap.reversed())
    
    for (index,_) in lineMap.enumerated() {
        if index < (lineMap.count - 1) {
            
            //print(index)
            
            let A1 = Int(lineMap[index + 1])
            let A2 = Int(lineMap[index])
            let A = abs(A1 - A2)
            
            let B1 = Int(lineMapReversed[index + 1])
            let B2 = Int(lineMapReversed[index])
            let B = abs(B1 - B2)
            
            if A != B {
                return false
            }
        }
    }
    return true
}

let n = Int(readLine()!)! // Number of test cases
for _ in 1 ... n { // Loop from 1 to n
    let input = readLine()! // Read a single line
    print(funnyString(input) ? "Funny" : "Not Funny")
}


