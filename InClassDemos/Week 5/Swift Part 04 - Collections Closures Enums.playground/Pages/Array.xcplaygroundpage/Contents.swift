//: Playground - noun: a place where people can play

import UIKit

let months = [
    "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"
]


print("Month Name")
print("===== ====")
for i in 0 ..< months.count {
    //println(" \(i + 1)   \(months[i])")
    let str = String(format: "%2i", i+1)
    print(" \(str)   \(months[i])")
}
print

print("Month Name")
print("===== ====")
for i in months.startIndex ..< months.endIndex {
    //println(" \(i + 1)   \(months[i])")
    let str = String(format: "%2i", i+1)
    print(" \(str)   \(months[i])")
}
print

print("Month Name")
print("===== ====")
var i = 1
for name in months {
    let str = String(format: "%2i", i)
    print(" \(str)   \(name)")
    i += 1
}
print

print("Month Name")
print("===== ====")
for (i, name) in months.enumerated() {
    let str = String(format: "%2i", i+1)
    print(" \(str)   \(name)")
}
print


var shoppingList = [ "Eggs", "Milk" ]
shoppingList += [ "Flour" ]
shoppingList += [ "Gruyère Cheese", "Butter" ]
shoppingList[0] = "Beef broth"
shoppingList[1...2] = [ "Onion", "Bay leaves", "Baguette" ]
print(shoppingList)

//var array = [] // error: empty collection literal requires an explicit type
//let array: Array<Int> = []
//let array: [Int] = []

var array: [Int] = []
//var array = [Int]()

//var array = Array<Int>()

for i in 0 ... 10 {
    print(i)
    array.append(i)
}
print(array)

array += [ 11, 12 , 13]

array[0] = 100
array

array.insert(200, at: 11)
array.insert(201, at: 12)

array[1...9]

array[3...5] = [33, 44, 55]
array

array[11...14] = []
array

array.remove(at: 5)
array

array[0...4]
array[...4]
array[..<4]
array[9...]

print(array.sorted())
print(array)

print(array.sorted(by: {$0 > $1}))
print(array)

print(array.sorted(by: {$0 < $1}))
print(array)

array.sort()
print(array)

//: [Next](@next)
