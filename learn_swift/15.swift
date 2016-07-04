protocol LivingThing {
    var lives:Int {get set}
    var limbs:Int {get}
}

protocol Talker {
    func Talk() -> String
}

protocol Animal:LivingThing, Talker {
}

class Cat:Animal {
    var lives:Int = 9
    var limbs:Int = 4

    func Talk() -> String {
        return "Meowwwwwwwwwwwwwwwwwwwww"
    }
}

class Taco:Animal {
    var lives:Int = 1
    var limbs:Int = 8

    func Talk() -> String {
        return "........................"
    }
}

func showAnimal(a:Animal) {
    println("I'm an animal with lives[\(a.lives)] and limbs[\(a.limbs)]")
    println("--> \(a.Talk())")
}

var cat = Cat()
showAnimal(cat)
cat.lives = 100
showAnimal(cat)
cat.limbs = 1000
showAnimal(cat)

func showAnimals(animals:[Animal]) {
    for x in animals {
        println(x.Talk())
    }
}

showAnimals([Taco(), Cat(), Taco()])

protocol SpeedRacer {
    var topSpeed:Int {get}
}

class Car:SpeedRacer, Comparable {
    var topSpeed:Int

    init(speed:Int) {
        self.topSpeed = speed
    }
}

func ==(c1:Car, c2:Car) -> Bool {
    return c1.topSpeed == c2.topSpeed
}

func <(c1:Car, c2:Car) -> Bool {
    return c1.topSpeed < c2.topSpeed
}

var camry = Car(speed:200)
var f1 = Car(speed:350)

if (f1 > camry) {
    println("Yes! F1 is faster!")
}
