//: [Previous](@previous)

import Foundation

func hello(_ name: String) {
    print("Hello, \(name)")
}

hello("Function")

let c1 = { (name: String) in
    print("Hello, \(name)")
}

c1("Closure")

var c2 = c1
c2("Closure")

c2 = hello
c2("Closure")


//

func threeTimes(_ n: Int) -> Int {
    return n * 3
}

threeTimes(4)

let c3 = { (n: Int) -> Int in
    return n * 3
}

c3(5)

let c4 = { n in n * 3 }

c4(6)

let cities = [
    "Barcelona", "Atlanta", "Sydney", "Athens",
    "Beijing", "London", "Rio de Janeiro", "Tokyo"
]

cities.sorted(by: {(a: String, b: String) -> Bool in
    return a < b
})

print(cities.sorted {(a: String, b: String) -> Bool in
    return a < b
})


cities.sorted(by: {(a: String, b: String) -> Bool in
    return a > b
})

print(cities.sorted {(a: String, b: String) -> Bool in
    return a > b
})

cities.sorted(by: {(a: String, b: String) -> Bool in
    return a.count < b.count
})

cities.sorted() {(a: String, b: String) -> Bool in
    return a.count < b.count
}

cities.sorted {(a: String, b: String) -> Bool in
    return a.count < b.count
}


print(cities.sorted {(a: String, b: String) -> Bool in
    return a.count < b.count
})

cities.sorted (by: { a, b in a < b })

cities.sorted(by: { $0 < $1 })

cities.sorted() { $0 < $1 }

cities.sorted { $0 < $1 }

cities.sorted()

cities.sorted(by: <)

cities.sorted(by: >=)

var cities2 = cities
cities2.sort()

cities2.sort(by: >=)

for c in cities2.reversed() {
    print(c)
}

var numberOfLegs = [ "ant": 6, "snake": 0, "cheetah": 4, "spider": 8, "elephant": 4 ]

let sortedLegs = numberOfLegs.sorted { (e1: (String, Int), e2: (String, Int) ) -> Bool in
    e1.1 != e2.1 ?  e1.1 < e2.1 : e1.0 <= e2.0
}

for (name, legs) in sortedLegs {
    print("\(name)s have \(legs) legs.")
}

//: [Next](@next)
