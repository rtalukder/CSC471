/**
 Raquib Talukder
 CSC471
 Homework 2
**/

import UIKit

/*
 Function Rank Problem
 */
func rankIndice(search key: Int, in sortedArray: [Int]) -> Int {
    var leftIndex : Int = 0
    var rightIndex : Int = sortedArray.count
    
    while leftIndex < rightIndex {
        // determine middle indice of the array
        // round down if an odd number
        let midIndex = leftIndex + (rightIndex - leftIndex) / 2
        
        if sortedArray[midIndex] < key {
            leftIndex = midIndex + 1
        }
        else if sortedArray[midIndex] > key {
            rightIndex = midIndex
        }
        else {
            return midIndex
        }
    }
    return -1
}

var sortedList1 : [Int] = [2, 5, 6, 10, 13, 14]
var answerIs1 : Int = rankIndice(search: 5, in: sortedList1)
var answerIs3 : Int = rankIndice(search: 10, in: sortedList1)

print (1 == answerIs1)
print (3 == answerIs3)

var sortedList2 : [Int] = [1, 2, 4, 5, 9, 10, 12, 14, 17]
var answerIs4 = rankIndice(search: 9, in: sortedList2)
var answerIs8 = rankIndice(search: 17, in: sortedList2)

print (4 == answerIs4)
print (8 == answerIs8)

/*
 Fraction Class Problem
 */

class Fraction{
    var numerator: Int = 0
    var denominator: Int = 1
    
    // class initializer
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        normalize()
    }
    
    // default initializer
    init() {}
    
    // function to make numerator negative if denominator is negative
    private func normalize() {
        if (denominator < 0) {
            denominator = -denominator
            numerator = -numerator
        }
        reduce()
    }

    // function to reduce fraction to lowest common denominator
    func reduce() {
        var u : Int = abs(numerator)
        var v : Int = denominator
        var r: Int
        while (v != 0) {
            r = u % v
            u = v
            v = r
        }
        
        // reduce numerator and denominator
        numerator /= u
        denominator /= u
    }

    // function to add two fractions
    func add(_ f: Fraction) -> Fraction {
        let result : Fraction = Fraction()
        /*
         a/b + c/d = ad + bc / bd
         */
        result.numerator = numerator * f.denominator + denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    // function to sub two fractions
    func sub(_ f: Fraction) -> Fraction {
        let result : Fraction = Fraction()
        /*
         a/b - c/d = ad - bc / bd
         */
        result.numerator = numerator * f.denominator - denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    // function to multiply two fractions
    func mul(_ f: Fraction) -> Fraction {
        let result : Fraction = Fraction()
        /*
         a/b * c/d = ac / bd
         */
        result.numerator = numerator * f.numerator
        result.denominator = denominator * f.denominator
        result.reduce()
        return result
    }
    
    // function to divide two fractions
    func div(_ f: Fraction) -> Fraction {
        let result : Fraction = Fraction()
        /*
         a/b / c/d = ad / bc
         */
        result.numerator = numerator * f.denominator
        result.denominator = denominator * f.numerator
        result.reduce()
        return result
    }
    
    /*
        Utility functions
     */
    
    var toString : String {
        return "\(numerator) / \(denominator)"
    }

    func print() {
        Swift.print("\(numerator) / \(denominator)")
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
}

let f1 : Fraction = Fraction(3, over: 2)
let f2 : Fraction = Fraction(1, over: 2)

let f3 : Fraction = f1.add(f2)
print("3/2 + 1/2 = 4/2 = 2/1")
f3.print()

let f4 : Fraction = f1.sub(f2)
print("3/2 - 1/2 = 2/2 = 1/1")
f4.print()

let f5 : Fraction = f1.mul(f2)
print("3/2 * 1/2 = 3/4")
f5.print()

let f6 : Fraction = f1.div(f2)
print("3/2 / 1/2 = 6/2 = 3/1")
f6.print()
