import UIKit

// ARRAYS

var evenNumbers:[Int] = [2,4,6,8]

let evenNumbers2: Array<Int> = [2,4,6,8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

print(evenNumbers.isEmpty)

print(evenNumbers.count)

if let first = evenNumbers.first {
  print(first)
} else {
   print("no data")
}

if let min = evenNumbers.min() {
print(min)
}
// subscripting
var firstElement = evenNumbers[0]

let firstThree = evenNumbers[0...2]
print(firstThree)

evenNumbers.contains(5)

evenNumbers.insert(0, at: 0)

var removedElement = evenNumbers.removeLast()
var removedZero = evenNumbers.remove(at: 0)
print(evenNumbers)

evenNumbers[0] = -2
print(evenNumbers)

evenNumbers[0...2] = [-2, -2, -2, 4, 4]
print(evenNumbers)

for (index, evenNumber) in evenNumbers.enumerated() {
   print("evenNumbers[\(index)] = \(evenNumber)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
print(firstThreeRemoved)
let lastRemoved = firstThreeRemoved.dropLast()
print(lastRemoved)

let firstThree2 = evenNumbers.prefix(3)
let lastOne = evenNumbers.suffix(1)

/*:
 ### ARRAYS
 
 Use index(of:) to determine the position of the element "Dan" in players.
 */

var players = ["Alice", "Bob", "Dan", "Eli", "Frank", "Dan"]

// TODO: Write solution here
print(players.firstIndex(of: "Dan") ?? "No index")
print(players.index(of: "Dan") ?? "No index")
/*:
 Write a for-in loop that prints the players' names and scores.
 */

players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let scores = [2, 2, 8, 6, 1, 2, 1]

// TODO: Write solution here
for (index,names) in players.enumerated() {
   print("\(names)'s score is: \(scores[index])")
}


// DICTIONARIES

var namesAndScores: [String: Int] = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
// var namesAndScores2: Dictionary<String, Int> = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

print(namesAndScores)

namesAndScores["Anna"]
namesAndScores["Greg"]

namesAndScores.isEmpty
namesAndScores.count

namesAndScores["Greg"] = 10
namesAndScores["Anna"] = 6
namesAndScores["Brian"] = nil // removes from Dictionary
print(namesAndScores)

for (player, score) in namesAndScores {
   print("\(player) has a score of \(score)")
  
   if score == 6 {
      
      print(player)
   }
}

for player in namesAndScores.keys {
   print("\(player)")
}

/*:
 ### DICTIONARIES
 
 Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
 */

// TODO: Write solution here
var person: Dictionary<String, String> = ["name": "Fego", "profession": "iOS Engineer", "country": "US", "state": "TX", "city": "Austin"]


// TODO: Write solution here

person["country"] = "USA"
person["state"] = "New Mexico"
person["city"] = "Albuquerque"

/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */

// TODO: Write solution here
func printLocation(ofPerson person: [String:String]) {
   
   if let state = person["state"], let city = person["city"] {
      print("Person lives in \(state) and the city is \(city)")
   }
}

printLocation(ofPerson: person)

// Sets

var someSet: Set<Int> = [1,2,3,1]

someSet.contains(1)

someSet.insert(5)

someSet.remove(3)
print(someSet)

