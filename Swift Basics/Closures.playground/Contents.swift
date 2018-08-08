import UIKit

var multiplyClosure: (Int, Int) -> Int = { (a, b) -> Int in
   return a * b
}

let result = multiplyClosure(4, 2)

func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
   let result = operation(a, b)
   print(result)
   return result
}

var addClosure: (Int, Int) -> Int = {a, b in
   return a + b
}

operateOnNumbers(2, 4, operation: addClosure)
operateOnNumbers(4, 2, operation: {$0 / $1})

var counter = 0
let incrementCounter = {
   counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()

counter

let names = ["Zepplin", "Banford", "Applejohn", "Cutford"]
names.sorted()

names.sorted(by: {a, b in
   a > b
})

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]


// Filter gets a new collection that is a subset of that collection based on some kind of filter
let largPrices = prices.filter( {price -> Bool in
   return price > 5
})

// Map takes a collection and changing each value of that collection and returns an array.
let salePrices = prices.map { price -> Double in
   return price * 0.9
}

// Reduce looks at a collection to perform some calculation and return a single result
let sum = prices.reduce(0) { result, price -> Double in
   return result + price
}

// using Dictionaries

var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

let stockSum = stock.reduce(0) { result, pair -> Double in
   return result + (pair.key * Double(pair.value))
}

/*:
 ### CLOSURES
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
 */

// TODO: Write solution here
let names2 = ["fego", "Addy", "lacey", "landon"]


// TODO: Write solution here
let allNames = names2.reduce("") {result, names -> String in
return result + names
}

print(allNames)


/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.) */

// TODO: Write solution here
let fourCharNames = names2.filter {names in
   names.count > 4
   }.reduce("") { result, name in
   return result + " " + name
   }

/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18. */

// TODO: Write solution here
let namesAndAges = ["fego": 25, "Addy": 5, "lace": 23, "landon": 2]

let underAge = namesAndAges.filter { (name, age) -> Bool in
   return age < 18
}
/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages). */

// TODO: Write solution here
let adults = namesAndAges.filter { (name, age) -> Bool in
   return age >= 18
   }.map {(names, ages) -> String in
      return names
   }
print(adults)
