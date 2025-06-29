import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()


func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print ("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables(number: 6,
                 end: 5)


//How to return values from functions
let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

print(areLettersIdentical(string1: "caf", string2: "fac"))

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

//How to return multiple values from functions
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser1() -> [String] {
    ["Taylor", "Swift"]
}

let user1 = getUser1()
print("Name: \(user1[0]) \(user1[1])")

func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")


func getUser() -> (firstName: String, lastName: String, age: Int) {
    (firstName: "Taylor", lastName: "Swift",30)
}

let user = getUser()
print("\(user.firstName) \(user.lastName) is \(user.2)")

let(firstName, lastName, _) = getUser()


//How to customize parameter labels

func rollDices(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDices(sides: 6, count: 4)

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

func printTimesTables2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5)
