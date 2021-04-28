//: [⇐ Previous: 02 - Functions](@previous)
//: ## Episode 03: Challenge - Functions

/*:
 ## Challenge 1
 - Create a closure version of the function below.
 - Try out the function & closure!
*/

// --------------------------------------
func calculateFullName(firstName: String, lastName: String?) -> String {
  firstName + " " + (lastName ?? "")
}
// --------------------------------------

// TODO: Write solution here
let myClosure = {(firstName: String, lastName: String) -> String in firstName + " " + lastName}
let transformFunction = calculateFullName
transformFunction("Tiago", "Souza")
myClosure("Tiago", "Souza")

/*:
 ## Challenge 2
 - Call the `printResult` function below
 - Use an inline closure as an argument
*/

// --------------------------------------
typealias Operate = (Double, Double) -> Double

func printResult(_ operate: Operate, _ a: Double, _ b: Double) {
  let result = operate(a, b)
  print(result)
}
// --------------------------------------

// TODO: Write solution here
printResult({(a: Double, b: Double) -> Double in a + b}, 10.4, 1.6)



//: [⇒ Next: 04 - Closure Syntax](@next)
