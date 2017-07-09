import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let s = readLine()!


func twoCharacters(_ input: String) -> Int {
    
    var matches = [Int]()
    var pair = ("","")
    var pairs = [(String,String)]()
    var firstChar = ""
    var secondChar = ""
    
    guard input.characters.count > 1 else {
        return 0
    }
    
    guard Set(input.characters).count > 1 else {
        return 0
    }
    
    let sMap = input.characters.map({ String($0) })
    let sSet = Array(Set(sMap))
    let sSetCount = sSet.count
    
    for i in 0..<(sSet.endIndex - 1) {
        for k in (i + 1)..<(sSet.endIndex) {
            pair = (sSet[i],sSet[k])
            pairs.append(pair)
        }
    }
    
    mainLoop: for pair in pairs {
        var match = true
        var sMapFiltered = [String]()
        
        if Set(sMap).count > 2 {
            sMapFiltered = sMap.filter({
                $0 == pair.0 || $0 == pair.1
            })
            
        } else {
            sMapFiltered = sMap
            
        }
        
        if let fC = sMapFiltered.first {
            firstChar = fC
        }
        
        secondChar = Array(Set(sMapFiltered.filter({
            $0 != firstChar
        }))).joined()
        
        for (index,char) in sMapFiltered.enumerated() {
            if  (index % 2 == 0 && char == firstChar) ||
                (index % 2 == 1 && char == secondChar) {
            } else {
                match = false
                continue mainLoop
            }
        }
        if match == true {
            matches.append(sMapFiltered.count)
        }
    }
    
    if matches.count > 0 {
        return matches.sorted().reversed()[0]
    } else {
        return 0
    }
}


print(twoCharacters(s))
