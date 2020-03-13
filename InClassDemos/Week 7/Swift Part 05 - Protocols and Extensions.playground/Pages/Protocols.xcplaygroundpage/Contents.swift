//: Playground - noun: a place where people can play

import UIKit

protocol Movable {
    func move()
    var speed: Int { get }
}

protocol Merchandise {
    var price: Float { get set }
    var model: String { get set }
    init(model: String, price: Float)
}

class Vehical : Movable, Merchandise {
    var speed: Int = 0
    var price: Float
    var model: String
    
    required init(model: String, price: Float) {
        self.model = model
        self.price = price
    }
    
    func move() {
        print("Moving")
    }
}

class Car : Vehical {
    required init(model: String, price: Float) {
        super.init(model: model, price: price)
        speed = 35
    }
    override func move() {
        print("Driving")
    }
}

class Human : Movable {
    let speed = 5
    var name: String = ""
    init(name: String) {
        self.name = name
    }
    func move() {
        print("Walking")
    }
}

class Computer : Merchandise {
    var price: Float
    var model: String
    required init(model: String, price: Float) {
        self.model = model
        self.price = price
    }
}

protocol Clock {
    var hour: Int { get }
    var minute: Int { get }
}

class MyClock: Clock {
    var hour : Int {
        let calendar = Calendar.current
        return calendar.component(.hour, from: Date())
    }
    var minute : Int {
        let calendar = Calendar.current
        return calendar.component(.minute, from: Date())
    }
}

class AppleWatch: Computer, Clock {
    var clock = MyClock() // delegation
    required init(model: String, price: Float) {
        super.init(model: model, price: price)
    }
    var hour : Int {
        return clock.hour
    }
    var minute : Int {
        return clock.minute
    }
}

var myCar = Car(model: "Tesla Model 3", price: 35_000)
var me = Human(name: "Tim Cook")
var myMac = Computer(model: "MacBookPro", price: 2_500)

var movableObject : Movable
movableObject = me
movableObject.move()
movableObject.speed

movableObject = myCar
movableObject.move()
movableObject.speed

var thing : Merchandise
thing = myCar
thing.model
thing.price

thing = myMac
thing.model
thing.price

var clock = MyClock()
clock.hour
clock.minute

var myWatch = AppleWatch(model: "Gold", price: 17_000)
myWatch.hour
myWatch.minute

// extension

extension Human {
    func think() {
        print("Cogito ergo sum")
    }
}

me.think()


