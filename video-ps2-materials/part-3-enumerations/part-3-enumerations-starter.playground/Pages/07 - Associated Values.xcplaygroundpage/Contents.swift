//: [⇐ Previous: 06 - Challenge - Switch Statements](@previous)
//: ## Episode 07: Enumerations with Associated Values
enum TwoDimensionalPoint {
  case origin
  case onXaxis(Double)
  case onYaxis(Double)
  case noZeroCoordinates(x: Double, y: Double)
}

let coordinates = (9.0, 7.0)
let twoDimensionalPoint: TwoDimensionalPoint

switch coordinates {
case (0, 0):
  twoDimensionalPoint = .origin
case (_, 0):
  twoDimensionalPoint = .onXaxis(coordinates.0)
case (0, _):
  twoDimensionalPoint = .onXaxis(coordinates.1)
default:
  twoDimensionalPoint = .noZeroCoordinates(x: coordinates.0, y: coordinates.1)
}

func getValues(for point: TwoDimensionalPoint) -> (x: Double, y: Double) {
  switch point {
  case .origin:
    return (0, 0)
  case let .onXaxis(x):
    return (x, 0)
  case let .onYaxis(y):
    return (0, y)
  case let .noZeroCoordinates(x: x, y: y):
    return (x, y)
  }
}

getValues(for: .noZeroCoordinates(x: 13, y: 24))
//: [⇒ Next: 08 - Conclusion](@next)
