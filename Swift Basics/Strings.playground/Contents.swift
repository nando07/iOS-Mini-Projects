import UIKit

var str = "Hello, playground"

var name = "Fego"
let message = "Hello, my name is \(name)"

let message2 = name + "was here"

let message3 = "Hello\nGoodbye"
print(message3)

var message4 = """
This
is a
cool
Swift String
feature
"""

print(message4)

for char in name {
   print(char)
}

let strLen = name.count

//let secondChar = name[1]
let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

cafeNormal.count
cafeCombining.count

cafeNormal.unicodeScalars.count
cafeCombining.unicodeScalars.count

let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]

//let lastIndex = cafeCombining.endIndex
//let lastChar = cafeCombining[lastIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let thirdIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 1)
let thirdChar = cafeCombining[thirdIndex]

lastChar.unicodeScalars.count
lastChar.unicodeScalars.forEach {codePoint in
   print(codePoint.value)
}

let equal = cafeNormal == cafeCombining

let backwardsName = name.reversed()

let secondCharIndex = backwardsName.index(backwardsName.startIndex, offsetBy: 1)

let secondChar = backwardsName[secondCharIndex]

let backwardsNameString = String(backwardsName)

let fullName = "Fernando Gomez"

let spaceIndex = fullName.index(of: " ")
if let spaceIndex = spaceIndex {
   _ = fullName[fullName.startIndex..<spaceIndex]
   let lastName = fullName[fullName.index(after:spaceIndex)...]
   _ = String(lastName)
}

