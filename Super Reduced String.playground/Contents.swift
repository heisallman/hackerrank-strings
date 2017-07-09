import Foundation;

// Enter your code here

let input = readLine()!

func findDuplicates(_ input: String) {
    
    let input = Array(input.characters).map({String($0)})
    var result = input
    var i = 0
    
    for _ in 0..<input.count {
        
        if i < input.count - 1 {
            
            if input[i] == input[i + 1] {
                result[i] = ""
                result[i + 1] = ""
                
                if result.joined().characters.count == 0 {
                    print("Empty String\n")
                    return
                }
                
                findDuplicates(result.joined())
                return
            }
        }
        i += 1
    }
    print(result.joined())
}


findDuplicates(input)