import Cocoa

//How to provide default values for parameters
func printTimesTables(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

var characters = ["Lama", "Pam", "Ray", "Steerlin"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

//How to handle errors in functions
enum PasswordError : Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345"{ throw PasswordError.obvious }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let pw = "12345"
do {
    let result = try checkPassword(pw)
    print(result)
} catch PasswordError.short {
    print("Error: password to short")
} catch {
    print ("Error \(error.localizedDescription) ") //need more work!
}


//Checkpoint 4

enum SqrtError : Error {
    case tooBig, noRoot
}

func mySqrt(_ number: Int) throws -> Int {
    if number > 100 { throw SqrtError.tooBig}
    for i in 1...number {
        if (i * i) == number { return i}
    }
    throw SqrtError.noRoot
}

let n = 25
do {
    let r = try mySqrt(n)
    print ("sqrt of \(n) is \(r)")
}
catch SqrtError.tooBig {
    print ("\(n) must < 10,000")
}
catch SqrtError.noRoot {
    print ("no root found for \(n)")
}

