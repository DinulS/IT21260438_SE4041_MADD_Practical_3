// Exercise 04 - Closures, map, filter, and reduce

let marks = [72, 45, 65, 48, 90]

// filter - keeps elements that match the condition ($0 is the current element)
let passed = marks.filter { $0 >= 50 }
print(passed) // [72, 65, 90]

// map - transforms every element; the original array is unchanged
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks) // [77, 50, 70, 53, 95]

// reduce - $0 is the running total, $1 is the current element
let total = marks.reduce(0) { $0 + $1 }
print(total) // 320

// Activity 5 - no for loops
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100 }
print(expensivePrices) // [120.0, 250.0, 500.0, 150.0]

let increasedPrices = prices.map { $0 + 10 }
print(increasedPrices) // [130.0, 260.0, 90.0, 510.0, 160.0]

let totalPrice = prices.reduce(0) { $0 + $1 }
print(totalPrice) // 1100.0
