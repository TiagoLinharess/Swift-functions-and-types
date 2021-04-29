//: [⇐ Previous: 02 - Inheritance](@previous)
//: ## Episode 03: Challenge - Inheritance

/*:
## Challenge 1 - Building a Class Heirarchy
Create a class named `Animal` that has…
1. a function named `speak()` that does nothing.
 
Create two `Animal` subclasses...
1. `WildAnimal` that...
  - has an `isPoisonous` property, that is a `Bool`
  - has an initializer that takes `isPoisonous` as a parameter
2. `Pet` that...
  - has a stored property named `name`, that is a `String`
  - has an initializer that takes `name` as a parameter
  - has a `play()` method that prints out a message
  - overrides `speak()` - It should print out a message

Create one subclass of your choice of `WildAnimal` or `Pet`. It should do at least one of the following:
 - override `speak()`
 - override `play()`
 - Add a new computed property
 - Add a new method
*/


// TODO: Write solution here
class Animal {
  func speak() {
    print("Animal is speaking!")
  }
}

class WildAnimal: Animal {
  let isPoisonous: Bool
  
  init(isPoisonous: Bool) {
    self.isPoisonous = isPoisonous
  }
}

class Pet: Animal {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func play() {
    print("Pet \(name) is playing!")
  }
  
  override func speak() {
    print("Pet \(name) is Speaking!")
  }
}

class Dog: Pet {
  override func speak() {
    print("Dog \(name) is speaking!")
  }
  override func play() {
    print("Dog \(name) is playing!")
  }
}
/*:
## Challenge 2 - Casting
- Create at least one instance of each class from the first challenge.
- Create an array that contains all of the instances.
- Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
- Call the function with each of your instances using a loop or whatever other method you'd like!
*/



// TODO: Write solution here
let lion = Animal()
let snake = WildAnimal(isPoisonous: true)
let loro = Pet(name: "Loro")
let amora = Dog(name: "Amora")

let animals = [lion, snake, loro, amora]

func getAnimalActivity(animal: Animal) {
  if let wild = animal as? WildAnimal {
    print("This wild animal is \(wild.isPoisonous ? "poisonous" : "not poisonous")")
  } else if let dog = animal as? Dog {
    dog.play()
  } else if let pet = animal as? Pet {
    print("The pet \(pet.name) is not a dog, but he can still play")
  } else {
    print("This animal has not been specified")
  }
}

animals.map { (animal) -> Void in
  getAnimalActivity(animal: animal)
}
//: [⇒ Next: 04 - Initializers](@next)
