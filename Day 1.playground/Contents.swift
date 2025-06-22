import Cocoa

// Day 1
// Variables, constants, strings, and numbers
//

// MARK: How to create variables and constants
var greeting = "Hello, playground"

// Variables
var name = "Sebastien"
name = "Charlotte"
name = "Julie"

// Constants
let character = "Superman"

// Print
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// Namming convention: camelCase
let managerName = "Sebastien REMY"
let dogBreed = "Malinois"
let meaningOfLine = "How many roads must a man walk down?"

// MARK: How to create strings
let actor = "Denzel Washington"
let result = "⭐️⭐️⭐️⭐️⭐️"
let filename = "image.jpg"
let quote = "Then he tappe a sign saying \"Believ\" and walked away."
let movie = """
    A day in
    the life of an
    Apple engineer
    """
print(movie)

// Count char
print(actor.count)
let nameLength = actor.count
print(nameLength)
    
// functions
print(actor.uppercased())
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))
// Warning : strings functions are case sensitive
print(filename.hasSuffix(".JPG"))

// MARK: How to store whole numbers
let score = 10
let reallyBig = 100_000_000

// Calc
let lowerScore = score - 2
let highterScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
// counter = counter + 5
counter += 5

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(12.isMultiple(of: 3))
      
// MARK: How to store decimal numbers
let num = 0.1 + 0.2
print(num)

let a = 1
let b = 2.0
let c = Double(a) + b
let d = a + Int(b)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

// CGFloat = Double
