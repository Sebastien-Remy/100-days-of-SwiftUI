import Cocoa

//How to store ordered data in arrays
var beatles = [ "John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
let temperatures = [25.3, 28.2, 26.4]

print (beatles[0])
print (numbers[0])
print (temperatures[0])

beatles.append("Adrian")

var scores = Array<Int>()
scores.append(100)
scores.append(85)
scores.append(80)
print (scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Lana", "Plam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Specter", "No time to die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities)
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden", "Trump"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// How to store and find data in dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])
print(employee["manager", default: "Unknown"])

let hasGratudes = [
    "Eric": false,
    "Maeve": true,
    "Otis": false]


let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo",
    2024: "Paris"
    ]
print(olympics[2024, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

print(heights["Yao Ming", default: 0])

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"


// How to use sets for fast data lookup
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print (actors)

var movieActors = Set<String>()
movieActors.insert("Denzel Washington")
movieActors.insert("Denzel Washington") // not added
movieActors.insert("Tom Cruise")
movieActors.insert("Nicolas Cage")
movieActors.insert("Samuel L Jackson")

print(movieActors)


// How to create and use enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Month {
    case january, februrary, march, april, may, june, july, august, september, october, november, december
}

var day = Weekday.monday
day = Weekday.tuesday
day = .friday
