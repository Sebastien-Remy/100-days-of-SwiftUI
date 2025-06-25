import Cocoa

//How to store truth with Booleans
let goodDog = true
var gameOver = false
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

isAuthenticated = !isAuthenticated
print(isAuthenticated)

print(gameOver)
gameOver.toggle()
print(gameOver)

//How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let name = "Taylor"
let age  = 26
let message = "Hello, my nma is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Appolo " + String(number) + " landed on the moon."

print ("5 * 5 = \(5*5)")

// Summary: Simple data
// Check point
let celsius = 30.0
let farenheit = (celsius * 9 / 5) + 32
print ("\(celsius) C° = \(farenheit) F°")
