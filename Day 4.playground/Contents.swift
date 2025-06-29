import Cocoa

// How to use type annotations
let surname: String = "Lasso"
var score: Double = 0
var luckyNumber: Int = 13
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()
enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .light
style = .dark


let username: String
username = "@twostraw"
print(username)


//Checkpoint 2
var movies: [String] = ["Starwars", "Starwars", "Indiana Jones", "James Bond"]
print(movies.count)

let uniqueMovie: Set<String> = Set(movies)
print(uniqueMovie.count)
