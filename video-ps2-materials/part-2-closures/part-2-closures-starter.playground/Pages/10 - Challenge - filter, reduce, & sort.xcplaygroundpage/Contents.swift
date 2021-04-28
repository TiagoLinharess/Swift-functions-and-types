//: [⇐ Previous: 09 - filter, reduce, and sort](@previous)
//: ## Episode 10: Challenge - filter, reduce, and sort

/*:
 ## Challenge Time 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
*/

let names = ["Tiago", "Caio", "Rodrigo", "Lipim", "Fabio"]
let totalNames = names.reduce("") {(total, name) -> String in
  total + " " + name
}
totalNames


/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
*/
let namesBiggerThen4 = names.filter { (name) -> Bool in
  name.count > 4
}.reduce("") { (total, name) -> String in
  total + " " + name
}
namesBiggerThen4


/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
*/
let namesAndAges = ["Tiago": 12, "Caio": 10, "Rodrigo": 50, "Lipim": 200, "Fabio": 20]

namesAndAges.filter { (name) -> Bool in
  name.value < 18
}


/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
*/

let namesOlderThen18 = namesAndAges.filter { (name) -> Bool in
  name.value >= 18
}.map { (name) -> String in
  name.key
}

//: [⇒ Next: 11 - Conclusion](@next)
