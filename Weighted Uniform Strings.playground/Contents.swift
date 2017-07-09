import Foundation;

// Enter your code here

let s = readLine()!
let n = Int(readLine()!)!

var dict = Dictionary<String,Int>()
var dictNum = Dictionary<Int,Int>()

func weightedString(_ input: String) -> Dictionary<Int,Int> {
    
    let sArr = s.characters.map({ String($0) })
    var continuousChar = 1
    
    for (index,char) in sArr.enumerated() {
        
        if dict[char] == nil {
            dict[char] = continuousChar
        }
        
        if index + 1 < sArr.count {
            if char == sArr[index + 1] {
                continuousChar += 1
                
                if continuousChar > dict[char]! {
                    dict[char] = continuousChar
                }
            } else {
                continuousChar = 1
            }
        }
    }
    
    for(key,value) in dict {
        let keyValue = key.unicodeScalars.first!.value - 96
        
        if dictNum[Int(keyValue)] == nil {
            dictNum[Int(keyValue)] = value * Int(keyValue)
        }
    }
    
    return dictNum
}


let result = weightedString(s)
var targetWeights = [Int]()

for _ in 1...n {
    let num = Int(readLine()!)!
    targetWeights.append(num)
}


extension Double {
    var isInteger: Bool {
        return rint(self) == self
    }
}

main: for num in targetWeights {
    
    if result.contains(where: { $0.value == num }) || result.contains(where: { $0.key == num }){
        print("Yes")
        continue main
        
    } else {
        
        let filtered = result.filter({
            $0.value > num
        })
        
        for (key,_) in filtered {
            let result:Double = Double(num)/Double(key)
            
            if result.isInteger {
                print("Yes")
                continue main
            }
        }
        print("No")
    }
}



