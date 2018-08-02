import UIKit
import Foundation

var str = "Hello, playground"



// Tuples, compiler guesses the types. Use tuples to combine a set of values together.

let coordinates = (2, 3)
let coordinatesDouble = (2.3, 3.5)
let coordintesMixed = (2.5, 2)

let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y


// Three values in a tuple

let coordinates3D = (x: 2, y: 3, z: 1)

let (x3, y3, z3) = coordinates3D
x3
y3
z3

/*:
 ### TUPLES Practice
 
 Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for
 that date.
 */
let date = (8,  1,  2018, 90.0)

date.0
date.1
date.2
date.3

/*:
 Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
 */

let dateNamed = (month: 8, day: 1, year: 2018, averageTemp: 90.0)

/*:
 In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
 */
let (_, day, _, temp) = dateNamed

day
temp

/*:
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value. */
var variableTuple = (month: 8, day: 1, year: 2018, averageTemp: 90.0)
variableTuple.averageTemp
variableTuple.averageTemp = 80
variableTuple.averageTemp



// Booleans

let yes = true
let no = false

let doesOneEqualTwo = (1 == 2)

let doesOneNotEqualTwo = (1 != 2)

let isOneGreaterThanTwo = (1 >= 2)
let isOneLessThanTwo = (1 <= 2)

// && evaluates to true if both sides evaluate to true
let and = false && false
let and2 = true && true

// or evaluates to true if one side is true
let or = false || false || true

let andTrue = 1 < 2 && 4 > 3
let andFalase = 1 > 2 && 3 > 4

// booleans with strings
let guess = "cat"
let dogEqualsCat = guess == "cat"

// it sorts strings to compare

let order = "cat" < "dog"

let a = 5
let b = 10

var min: Int = 0

if a < b {
   min = a
} else {
   min = b
}
min

// Ternary

let minT = a < b ? a : b

/*:
 ### BOOLEANS
 Create a constant called `myAge` and set it to your age. Then, create a constant called `isTeenager` that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
 */

// TODO: Write solution here
let myAge = 26
let isTeenager = myAge >= 13 && myAge <= 19
/*:
 Create another constant called `theirAge` and set it to the age of the author of these challenges (tutorial team member Matt Galloway), which is 30. Then, create a constant called `bothTeenagers` that uses Boolean logic to determine if both you and him are teenagers.
 */

// TODO: Write solution here
let theirAge = 30
let bothTeenagers = (myAge >= 13 && myAge <= 19) && (theirAge >= 13 && theirAge <= 19)
/*:
 Create a constant called student and set it to your name as a string. Create a constant called author and set it to Matt Galloway. Create a constant called `authorIsStudent` that uses string equality to determine if student and author are equal.
 */

// TODO: Write solution here
let student = "Fego"
let author = "Matt"
let authorIsStudent = student == author
/*:
 Create a constant called `studentBeforeAuthor` which uses string comparison to determine if student comes before author.
 */

// TODO: Write solution here
let studentBeforeAuthor = student < author

/*:
 ### IF STATEMENTS AND BOOLEANS
 Create a constant called `myAge` and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19, and Not a teenager if your age is not between 13 and 19.
 */

// TODO: Write solution here
if (myAge >= 13 && myAge <= 19) {
   print("Teenager!")
} else {
   print("Not a teenager")
}
/*:
 Create a constant called `answer` and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out answer.
 */

// TODO: Write solution here
let answer = myAge >= 13 && myAge <= 19 ? "Teenager" : "Not teenager"
print(answer)


/*:
 ### WHILE LOOPS
 Create a variable named `counter` and set it equal to 0. Create a `while` loop with the condition `counter < 10` which prints out `counter` is `X` (where `X` is replaced with counter value) and then increments `counter` by 1.
 */

// TODO: Write solution here
var counter: Int = 0

while counter < 10 {
   print("Counter is: \(counter)")
   counter += 1
}
/*:
 Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int(arc4random_uniform(6)) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.
 */

// TODO: Write solution here
var counter2: Int = 0
var roll: Int = 0


repeat {
   roll = Int(arc4random_uniform(6))
   counter2 += 1
   print("After \(counter2) rolls, roll is \(roll)")
   
} while roll != 0


// FOR LOOPS

let closedRange = 0...5
let halfOpenRange = 0..<5

var sum: Int = 0
let count: Int = 10

for i in 1...count {
   sum += i
}
sum

for _ in 0..<count {
   print("Fego")
}

for i in 1...count {
   if i % 2 == 1 {
      print("\(i) is an odd number.")
   }
}

// You can do the above with a where clause

for i in 1...count where i % 2 == 1 {
   print("\(i) is an odd number.")
}

for i in 1...count {
   print("Hello.")
   if i == 3 {
      // continue just makes the loop go back to the next evaluation, so at i = 3 it won't print goodBye, It will go back to printing hello at i = 4
      continue
   }
   print("Goodbye.")
}

// You can name for loops

outer: for row in 1...3 {
   for column in 1...3 {
      if row == 2 && column > 1 {
          print()
         continue outer
      }
      print("\(column) ", terminator: "")
   }
   print()
}

/*:
 ### FOR LOOPS
 
 Create a constant called range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.
 */

// TODO: Write solution here
let range = 1...10

for i in range {
   print(i * i, terminator: "\n")
}
/*:
 Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. Hint: use `sqrt(...)`. You’ll need to type convert your loop constant.
 */

// TODO: Write solution here
for i in range {
   print((sqrt(Double(i))), terminator: "\n")
}
/*:
 The code below iterates over only even rows. Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is still 448 after your modifications.
 */

// TODO: Modify per instructions above

var sum2 = 0
for row in 0 ..< 8 where row % 2 == 1 {
   for column in 0..<8 {
      sum2 += row * column
      print("\(row) times \(column)")
   
   }
}
sum2

/*:
 ### SWITCH STATEMENTS
 
 Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult;40-60, Middle aged; 61+, Elderly.
 */

// TODO: Write solution here
var age: Int = 61

switch age {
case 0...2 :
   print("infant")
case 3...12 :
   print("Child")
case 13...19 :
   print("Teenager")
case 20...39 :
   print("Adult")
case 40...60 :
   print("Middle Aged")
case _ where age >= 61:
   print("Elderly")
default:
   print("Invalid age.")
   
}
/*:
 Write a switch statement that takes a tuple containing a string and an integer.  The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for the author of thee challenges, it would print out "Matt is an adult.".
 */
var person = (name: "Fego", age: 4)
// TODO: Write solution here

//This is how I did it
switch person {
case let (name, age) where (age > 0 && age < 3):
   print("\(name) is an infant")
case let (name, age) where (age > 2 && age < 13):
   print("\(name) is an Child")
case let (name, age) where (age > 12 && age < 20):
 print("\(name) is an Teenager")
case let (name, age) where (age > 19 && age < 40):
   print("\(name) is an Adult")
case let (name, age) where (age > 39 && age < 61):
  print("\(name) is middle aged.")
case let (name, age) where age >= 61:
   print("\(name) is \(age) so he is elderly")
default:
   print("Invalid age.")
}

// this is a better way
switch person {
case (let name, 0...2):
   print("\(name) is an infant")
case (let name, 3...12):
   print("\(name) is an Child")
case (let name, 13...19):
   print("\(name) is an Teenager")
case (let name, 20...39):
   print("\(name) is an Adult")
case (let name, 40...60):
   print("\(name) is middle aged.")
case (let name, age) where age >= 61:
   print("\(name) is \(age) so he is elderly")
default:
   print("Invalid age.")
}

/*:
 ### INTRODUCTION TO FUNCTIONS
 
 Write a function named `printFullName` that takes two strings called `firstName` and `lastName`.  The function should print out the full name defined as `firstName` + " " + `lastName`. Use it to print out your own full name.
 */

// TODO: Write solution here
func printFullName(firstName: String, lastName: String) {
   print(firstName + " " + lastName)
}

printFullName(firstName: "Fego", lastName: "Gomez")
/*:
 Change the declaration of `printFullName` to have no external name for either parameter.
 */

// TODO: Write solution here
func printFullName2(_ first: String, _ second: String) {
   print(first + " " + second)
}

printFullName2("Fego", "Gomez")
/*:
 Write a function named `calculateFullName` that returns the full name as a string. Use it to store your own full name in a constant.
 */

// TODO: Write solution here
func calculateFullName(firstName: String, lastName: String) -> String {
   return firstName + " " + lastName
}

let fullName = calculateFullName(firstName: "fego", lastName: "gomez")
/*:
 Change `calculateFullName` to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the following syntax: `string.characters.count`. Use this function to determine the length of your own full name.
 */

// TODO: Write solution here
func calculateFullName3(fullname: String) -> (String, Int) {
   return (fullname, fullname.count)
}

var myInfo = calculateFullName3(fullname: "Fernando")

myInfo.0
myInfo.1

func add(_ a: Int, _ b: Int) -> Int {
   return a + b
}

var function = add

function(4, 2)

func subtract(_ a: Int, _ b: Int) -> Int {
   return a - b
}

function = subtract
function(4, 2)

typealias operation = (Int, Int) -> (Int)

func printResult(_ function: operation, _ a: Int, _ b: Int) {
   let result = function(a, b)
   print(result)
}

printResult(add, 4, 2)
printResult(subtract, 4, 2)

// parameters in functions are constants

// pass by reference
func incrementAndPrint(_ value: inout Int) {

value += 1
print(value)
}

var value3 = 5

incrementAndPrint(&value3)

// can't change value of parameters, they are constants
func adder(a: Int) -> Int {
//   a += 1
   return a
}

func adder2(a: Int) -> Int {
   var b: Int
  b = a
   b += 1
   return b
}

adder2(a: 4)
