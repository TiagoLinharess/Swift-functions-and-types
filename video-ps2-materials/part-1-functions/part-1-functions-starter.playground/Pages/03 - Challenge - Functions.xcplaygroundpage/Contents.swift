//: [⇐ Previous: 02 - Functions](@previous)
//: ## Episode 03 - Challenge - Functions

/*:
 ## Challenge 1
 Write a function that:
 - Takes at least two `String` parameters
 - Has a default value for one parameter
 - Returns a `String`
 - Combines the two parameters in some way and returns the result
 
 You can add any other parameters you like, and you can modify or add anything you want to concatenated strings!
*/

// TODO: Write solution here
func challengeFunction(param1: String, param2: String = "param") -> String {
  return "first parameter: \(param1), second parameter: \(param2)"
}

print(challengeFunction(param1: "Me"))

func deutschify(_ word1: String, _ word2: String = "Katzen") -> String {
  let adjective = ["Frolich", "Rund", "Salzing", "Schwarze"].randomElement()!
  let ending = ["schule", "keit", "maler", "maschine"].randomElement()!
  
  return adjective + word1 + word2 + ending
}

print(deutschify("swifty"))

//: [⇒ Next: 04 - Overloading](@next)
