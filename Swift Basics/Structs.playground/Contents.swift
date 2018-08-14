import Foundation

//let restaurantLocation = (2, 4)
//let restaurantRange = 2.5

//struct Location {
//   let x: Int
//   let y: Int
//}
//
//struct DeliveryArea {
//   let center: Location
//   let radius: Double

//   func contains(_ location: Location) -> Bool {
//      let distanceToStore = distance(from: location, to: center)
//      return distanceToStore < radius
//   }
//}
//
//// We can group things better with structs.
//
//let restaurant = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let otherRestaurant = DeliveryArea(center: Location(x: 7, y: 8), radius: 1.5)
//
//let restaurants = [restaurant, otherRestaurant]
//
//
//// Pythagorean Theorem 📐🎓
//func distance(from source: Location, to target: Location) -> Double {
//  let distanceX = Double(source.x - target.x)
//  let distanceY = Double(source.y - target.y)
//  return sqrt(distanceX * distanceX + distanceY * distanceY)
//}
//
//func isInDeliveryRange(location: Location) -> Bool {
//
//   for restaurant in restaurants {
//      if restaurant.contains(location) {
//         return true
//      }
//   }
//   return false
//}
//
//isInDeliveryRange(location: Location(x: 3, y: 4))
//isInDeliveryRange(location: Location(x: 5, y: 4))
//isInDeliveryRange(location: Location(x: 8, y: 8))

//: ### STRUCTURES
//: Write a struct that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.

// TODO: Write solution here
struct PizzaOrder {
   let size: Int
   let toppingOne: String
   let toppingTwo: String
   let toppingThree: String
   let toppings: [String]
}

let pizzaOrder = PizzaOrder(size: 12, toppingOne: "Cheese", toppingTwo: "Onions", toppingThree: "Pepperoni", toppings: ["Salami", "Anchovies", "Pineapple"])
//: Change `distance(from:to:)` to use `Location`s as parameters instead of x-y tuples.
struct Location {
   let x: Int
   let y: Int
}

// TODO: Modify this
func distance(from source: Location, to target: Location) -> Double {
   let distanceX = Double(source.x - target.x)
   let distanceY = Double(source.y - target.y)
   return sqrt(distanceX * distanceX + distanceY * distanceY)
}

//: Change `contains(_:)` to call the new `distance(from:to:)` with `Location`s.

struct DeliveryArea {
   let center: Location
   var radius: Double
   
   func contains(_ location: Location) -> Bool {
      // TODO: Modify this
      let distanceFromCenter =
         distance(from: location, to: center)
      
      return distanceFromCenter < radius
   }
   
   func overlaps(with area: DeliveryArea) -> Bool {
     return distance(from: center, to: area.center) <= (radius + area.radius)
   }
}

//: Add a method `overlaps(with:)` on `DeliveryArea` that can tell you if the area overlaps with another area.


let area1 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area2 = DeliveryArea(center: Location(x: 5, y: 9), radius: 2.5)
distance(from: area1.center, to: area2.center)
area1.overlaps(with: area2)
// TODO: Test if areas 1 and 2 overlap (should be false)

let area3 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area4 = DeliveryArea(center: Location(x: 3, y: 5), radius: 2.5)
// TODO: Test if areas 3 and 4 overlap (should be true)
area3.overlaps(with: area4)
