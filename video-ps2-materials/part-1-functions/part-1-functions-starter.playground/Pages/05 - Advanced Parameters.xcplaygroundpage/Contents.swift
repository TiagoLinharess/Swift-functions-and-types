//: [⇐ Previous: 04 - Overloading](@previous)
//: ## Episode 05 - Advanced Parameters

// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Variadic Parameters
print(jessyGrade, ozmaGrade, "meow")

func getHighestgrade(for grades: Int...) -> Int {
  grades.max() ?? 0
}

getHighestgrade()
getHighestgrade(for: jessyGrade, ozmaGrade)
getHighestgrade(for: ozmaGrade)
//: ### Inout Parameters

// --------------------------------------
var count = 0
// --------------------------------------

// inout transforms the function constant in a var, and the value needs to be a var
func incrementAndPrint(_ value: inout Int) {
  value += 1
  print(value)
}

incrementAndPrint(&count)
incrementAndPrint(&count)
incrementAndPrint(&count)
count

//: [⇒ Next: 06 - Challenge - Overloads & Parameters](@next)
