import UIKit

/*:
 ### INTRODUCTION TO OPTIONALS
 
 Make an optional `String` called `myFavoriteSong`. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to `nil`.
 */

// TODO: Write solution here
var myFavoriteSong: String?
myFavoriteSong = nil

/*:
 Create a constant called `parsedInt` and set it equal to `Int("10")` which tries to parse the string `10` and convert it to an `Int`. Check the type of `parsedInt` using Option-Click. Why is it an optional?
 */

// TODO: Write solution here
let parsedInt = Int("jk")
// we may not be assigning a number, so paredInt is of type Int?
/*:
 Change the string being parsed in the above exercise to a non-integer (try "dog" for example). What does `parsedInt` equal now?
 */

// TODO: Write solution here
// nil
/*:
 ### MORE OPTIONALS
 
 Using your `myFavoriteSong` variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."
 */
//let favorite = myFavoriteSong
// TODO: Write solution here

if let myFavorite = myFavoriteSong {
   print(myFavorite)
} else {
   print("no favorite song")
}

/*:
 Change `myFavoriteSong` to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
 */

// TODO: Follow instructions
  let newFavorite = myFavoriteSong ?? "Clocks"
   print(newFavorite)

/*:
 Write a function called `printNickname` that takes an optional String as a parameter. Use the `guard` statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.
 */

// TODO: Write solution here
func printNickname(name: String?) {
   guard let name = name else {
      print("no name")
      return
   }
   print(name)
}

printNickname(name: nil)
printNickname(name: "fego")
