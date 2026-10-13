// Exercise 03 - Tuples

// Returns three related values at once. `min()!`/`max()!` assume a non-empty array.
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

do {
    let result = summary(of: [72, 65, 48, 90])
    print(result.minimum) // 48
    print(result.maximum) // 90
    print(result.average) // 68.75
}

// Tuple Unpacking
do {
    let (low, high, average) = summary(of: [72, 65, 48, 90])
    print(low)
    print(high)
    print(average)
}

// Ignoring one part with `_`
do {
    let (low, high, _) = summary(of: [72, 65, 48, 90])
    print(low)
    print(high)
}

// Activity 4
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (total, Double(total) / Double(marks.count))
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")     // Total: 300
print("Average: \(analysis.average)") // Average: 75.0
