# Practical 03 - Knowledge Check

1. **Why use functions:** To give reusable work a name, avoid repeating code, keep code easier to read, and test small parts separately.
2. **Parameter:** A named input a function accepts, e.g. `name` in `greetStudent(name:)`, so the same function can work with different values.
3. **`-> String`:** The function returns a value of type `String`.
4. **Argument label:** The name used when calling the function (e.g. `from` in `travel(from:to:)`). It can differ from the parameter name used inside the function, and `_` removes it.
5. **Default parameter value:** A value used when the caller leaves that argument out, e.g. `passMark: Int = 50`. The caller can still override it.
6. **`guard`:** Checks a required condition first and exits early (`return`) if it fails. Values unwrapped with `guard let` stay available for the rest of the function.
7. **Tuple:** A group of several values in one value, e.g. `(minimum: Int, maximum: Int, average: Double)`. It lets a function return more than one result.
8. **`filter`:** Returns a new array with only the elements that satisfy a condition.
9. **`map`:** Returns a new array where every element has been transformed.
10. **`reduce`:** Combines all elements into one value, e.g. a total.
11. **Problem an enum solves:** It limits a value to a fixed set of valid choices, so invalid values (like a misspelled string) can't be used by accident.
12. **Raw value:** A fixed value attached to each enum case, e.g. `case aMinus = "A-"`, read with `.rawValue`.
13. **Struct:** A custom value type that groups related properties and methods together.
14. **Stored property:** A property that holds a value in the instance, e.g. `name` or `mark`.
15. **Computed property:** A property calculated every time it is accessed, e.g. `area` or `grade`. It is not stored.
16. **When `mutating` is required:** When a struct method changes one of the struct's own properties.
17. **Class:** A reference type with properties, methods and initializers. It supports inheritance.
18. **Struct vs class:** A struct is a value type, so assigning it makes an independent copy. A class is a reference type, so assigning it shares the same object and a change through one reference is seen through the other.
