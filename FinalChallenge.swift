// Final Practical Task - Student Management System

// Part A - Grade Enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B - Student Struct
struct Student {
    var studentID: String
    var name: String
    var mark: Int

    // Part C - Computed Grade Property
    var grade: Grade {
        switch mark {
        case 80...100: return .a
        case 75..<80:  return .aMinus
        case 70..<75:  return .bPlus
        case 65..<70:  return .b
        case 60..<65:  return .bMinus
        case 55..<60:  return .cPlus
        case 45..<55:  return .c
        case 40..<45:  return .cMinus
        default:       return .f
        }
    }

    // Part D - Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("----------------------------------")
    }
}

// Part E - Create Students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

print("==================================")
print("    STUDENT MANAGEMENT SYSTEM")
print("==================================")

// Part F - Display Students
for student in students {
    student.displayDetails()
}

// Part G - filter
// Nimali (45) gets a C from the grade bands but is still excluded here, as the sheet requires
let passedStudents = students.filter { $0.mark >= 50 }
print("Passed Students:")
for student in passedStudents {
    print("- \(student.name)")
}

// Part H - map
let studentNames = students.map { $0.name }
print("Student Names: \(studentNames)")

// Part I - reduce
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)") // Class Average: 62.6

// Additional Challenge (optional)
print("==================================")
print("      ADDITIONAL CHALLENGE")
print("==================================")

// 1. Validate optional input with guard let
func addStudent(id: String, name: String?, mark: Int?) -> Student? {
    guard let name = name, !name.isEmpty else {
        print("Invalid name")
        return nil
    }

    guard let mark = mark, (0...100).contains(mark) else {
        print("Invalid mark")
        return nil
    }

    return Student(studentID: id, name: name, mark: mark)
}

addStudent(id: "IT006", name: nil, mark: 70)?.displayDetails()     // Invalid name
addStudent(id: "IT006", name: "", mark: 70)?.displayDetails()      // Invalid name
addStudent(id: "IT006", name: "Dilan", mark: 120)?.displayDetails() // Invalid mark
addStudent(id: "IT006", name: "Dilan", mark: 77)?.displayDetails()  // Prints Dilan's details

// 2. Summarise with a tuple - returns nil for an empty array instead of crashing
func summarize(_ students: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    let marks = students.map { $0.mark }

    guard let minimum = marks.min(), let maximum = marks.max() else {
        return nil
    }

    return (minimum, maximum, Double(marks.reduce(0, +)) / Double(marks.count))
}

if let stats = summarize(students) {
    print("Minimum: \(stats.minimum)") // 38
    print("Maximum: \(stats.maximum)") // 90
    print("Average: \(stats.average)") // 62.6
}

if summarize([]) == nil {
    print("No students to summarise")
}

// 3. Value vs reference
// Student is a struct, so the copy is independent of the original
let originalStudent = students[0]
var copiedStudent = originalStudent
copiedStudent.mark = 95

print("Original: \(originalStudent.mark)") // 72
print("Copy: \(copiedStudent.mark)")       // 95

// A class instance is shared, so a change through one reference shows in the other
class StudentRecord {
    var mark: Int

    init(mark: Int) {
        self.mark = mark
    }
}

let firstRecord = StudentRecord(mark: 72)
let secondRecord = firstRecord
secondRecord.mark = 95

print("First reference: \(firstRecord.mark)")   // 95
print("Second reference: \(secondRecord.mark)") // 95
