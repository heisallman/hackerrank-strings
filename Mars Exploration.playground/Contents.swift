import Foundation;

// Enter your code here

let sos = readLine()!


let soschar = Array(sos.characters)
var total = 0

for (index,character) in soschar.enumerated() {
    switch (index, character) {
    case (index,"S") where index % 3 == 0:
        continue
    case (index, "O") where index % 3 == 1:
        continue
    case (index, "S") where index % 3 == 2:
        continue
    default:
        total += 1
    }
}

print(total)