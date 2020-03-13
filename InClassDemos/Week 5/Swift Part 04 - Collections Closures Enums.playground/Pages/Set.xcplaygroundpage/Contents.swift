//: [Previous](@previous)

import Foundation

//var genres: Set<String> = ["Rock", "Classical", "Hip hop"]
var genres: Set = ["Rock", "Classical", "Hip hop"]

var cities = [ "Beijing", "London", "Rio de Janeiro" ] as Set

type(of: cities)


var newSports = Set<String>()

newSports.insert("Golf")
newSports.insert("Rugby seven")

print(newSports)

for s in newSports {
    print("\(s) has been added to Olympic sports")
}

genres.sorted()

cities

cities.sorted()


var oddNums: Set = [1, 3, 5, 7, 9]
let evenNums: Set = [0, 2, 4, 6, 8]
let smallPrimes: Set = [2, 3, 5, 7]

oddNums.union(evenNums).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddNums.intersection(evenNums).sorted()
// []
oddNums.subtracting(smallPrimes).sorted()
// [1, 9]
oddNums.symmetricDifference(smallPrimes).sorted()
// [1, 2, 9]


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


var d = 100 as Float
type(of: d)

//: [Next](@next)
