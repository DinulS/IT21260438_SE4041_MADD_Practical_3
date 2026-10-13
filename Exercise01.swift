// Exercise 01 - Functions

// Step 1 - A Simple Function
func greet() {
    print("Welcome to SE4041")
}

greet()

// Step 2 - Function with a Parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a Value
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

// Wrapped in `do` so `let result` does not clash with `func result` below
do {
    let result = grade(for: 68)
    print(result) // Pass
}

// Activity 1 - Average of three Doubles
func calculateAverage(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}

do {
    let result = calculateAverage(75, 82, 68)
    print(result) // 75.0
}

// Argument Labels - `from`/`to` are labels, `town`/`city` are used inside
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label with `_`
func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10)) // 20

// Default Parameter Values
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(result(68))               // Pass
print(result(68, passMark: 75)) // Fail

// Activity 2
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(finalResult(mark: 45))               // Fail - below the default 50
print(finalResult(mark: 75))               // Pass
print(finalResult(mark: 75, passMark: 80)) // Fail - default overridden to 80
