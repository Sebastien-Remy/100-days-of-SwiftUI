import Cocoa

// How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser //no ()
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()


let sayHelloTo = { (name: String) -> String in
        "Hi \(name)"
}

let r = sayHelloTo("Seb")

var greetCopy2: () -> Void = greetUser
var sayHelloToCopy: (String) -> String = sayHelloTo


func getUderData(for id: Int) -> String {
    if id == 1989 { return "Taylor Swifg" } else { return "??" }
}

let data: (Int) -> String = getUderData


let team = ["Tom", "John", "Peter", "Xavier", "Alexander"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Tom" {
        return true
    } else if name2 == "Tom" {
        return false
    }
    return name1 < name2
}


let firstCap = team.sorted(by: captainFirstSorted)
print(firstCap)

let capFirst = team.sorted(by: {(name1: String, name2: String) ->Bool in
    if name1 == "Xavier" {
        return true
    } else if name2 == "Xavier" {
        return false
    }
    return name1 < name2
})
print(capFirst)

//How to use trailing closures and shorthand syntax
let t = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = t.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})
print(captainFirstTeam)

let captainFirstTeam2 = t.sorted(by: { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    
    return a < b
})
print(captainFirstTeam2)

let captainFirstTeam3 = t.sorted(by: {
    if $0 == "Suzanne" {
        return true
    } else if $0 == "Suzanne" {
        return false
    }
    
    return $0 < $1
})
print(captainFirstTeam3)

let reverseTeam = team.sorted { return $0 > $1}
print(reverseTeam)

let tOnly = t.filter { $0.hasPrefix("T") }
print(tOnly)


let uppercaseTeam = t.map { $0.uppercased() }
print(uppercaseTeam)


//How to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)


func genNum() -> Int {
    Int.random(in: 1...6)
}

let dices = makeArray(size: 2, using: genNum)
print(dices)

func doImportantWork (first: () -> Void,
                      second: () -> Void,
                      third: () -> Void
) -> Void {
    print("first step")
    first()
    print("second step")
    second()
    print("third step")
    third()
}


doImportantWork {
    print("work 1")
} second: {
    print("work 2")
} third: {
    print("work 3")
}

//Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let evenLuck = luckyNumbers.filter { !$0.isMultiple(of: 2)}
let sortedLuck = evenLuck.sorted()
sortedLuck.map { print("\($0) is a lucky number")}
