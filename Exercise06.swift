// Exercise 06 - Structures and Classes
// Each example is wrapped in `do` because `Student` is redefined several times

// Structures - Swift generates the memberwise initializer automatically
do {
    struct Student {
        var name: String
        var mark: Int
        var registered: Bool = true
    }

    let student = Student(name: "Amal", mark: 72)
    print(student.name)       // Amal
    print(student.mark)       // 72
    print(student.registered) // true
}

// Computed Properties - `area` is calculated each time, not stored
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area) // 12.0

// Add a Computed Grade
do {
    enum Grade: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }

    struct Student {
        var name: String
        var mark: Int

        var grade: Grade {
            switch mark {
            case 75...100:
                return .a
            case 65..<75:
                return .b
            case 50..<65:
                return .c
            default:
                return .f
            }
        }
    }

    let student = Student(name: "Amal", mark: 72)
    print(student.name)           // Amal
    print(student.grade.rawValue) // B
}

// Methods
do {
    struct Student {
        var name: String
        var mark: Int

        func displayDetails() {
            print("\(name) received \(mark)")
        }
    }

    let student = Student(name: "Kamal", mark: 75)
    student.displayDetails() // Kamal received 75
}

// mutating Methods - required because increment() changes a property
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count) // 2

// Classes - unlike the structs above, the initializer is written explicitly
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce() // Nushkan teaches SE4041

// Struct vs Class
// Struct = value type: assigning makes an independent copy
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)  // 0
print(secondPoint.x) // 99

// Class = reference type: both constants point to the same object
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)  // 99
print(secondCounter.count) // 99
