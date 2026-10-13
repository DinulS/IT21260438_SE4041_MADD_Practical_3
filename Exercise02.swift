// Exercise 02 - guard

// Example - guard let unwraps the optional and exits early if it is nil
func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }

    print("Registered \(name)")
}

register("Kamal") // Registered Kamal
register(nil)     // No name given

// Add Another Validation
// Wrapped in `do` so this version of `register` does not clash with the one above
do {
    func register(_ name: String?) {
        guard let name = name else {
            print("No name given")
            return
        }

        guard !name.isEmpty else {
            print("Name cannot be empty")
            return
        }

        print("Registered \(name)")
    }

    register(nil)     // No name given
    register("")      // Name cannot be empty
    register("Kamal") // Registered Kamal
}

// Activity 3
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

checkStudent(name: nil, mark: 75)     // Student name unavailable
checkStudent(name: "Kamal", mark: nil) // Student mark unavailable
checkStudent(name: "Kamal", mark: 75)  // Kamal received 75 marks
