// Pet Shop Tasks

// all animals need to be fed
protocol Feedable {
    func feed()
}

// cageable animal also needs to be fed, i.e bird
protocol Cageable: Feedable {
    func cage()
}

// swimable animal also needs to be fed, i.e fish
protocol Swimable: Feedable {
    func swim()
}

// if an animal exercises it needs to be fed i.e cat
protocol Exercise: Feedable {
    func exercise()
}

// if an animal is walkable it need's to exercise
protocol Walkable: Exercise {
    func walk()
}


protocol Cleanable {
    func clean()
}

// tanks need to be cleaned
protocol Tanks: Cleanable {
    func cleanTank()
}

// cages need to be cleaned
protocol Cages: Cleanable {
    func cleanCage()
}


// will create struct for cat, dog, fish and bird

struct cat: Walkable {
    func feed() {
        print("cat has to be fed")
    }
    func exercise() {
        print("cat needs to exercise")
    }
    func walk() {
        print("cat walks freely")
    }
}

struct dog: Walkable {
    func feed() {
        print("dog has to be fed")
    }
    func exercise() {
        print("dog needs to exercise")
    }
    func walk() {
        print("dog walks freely")
    }
}

struct fish: Tanks, Swimable {
    func clean() {
        print("tank needs to be clea")
    }
    func cleanTank() {
        print("tank is cleanable")
    }
    func swim() {
        print("fish can swim")
    }
    func feed() {
        print("fish has to be fed")
    }
}

struct bird: Cages, Cageable {
    func cage() {
        print("bird is cageable")
        
    }
    func clean() {
        print("cage needs to be cleaned")
    }
    func cleanCage() {
        print("cage is clean")
    }
    func feed() {
        print("bird has to be fed")
    }
}


var Cat = cat()
var Dog = dog()
var Bird = bird()
var Fish = fish()


var walkable: [Walkable] = [Cat, Dog]
var swimable: [Swimable] = [Fish]
var feedable: [Feedable] = [Cat, Dog, Fish, Bird]
var cagebale: [Cageable] = [Bird]
var tankable: [Tanks] = [Fish]

for i in walkable {
    i.walk()
}
print()
for i in swimable {
    i.swim()
}
print()
for i in feedable {
    i.feed()
}
print()
for i in cagebale {
    i.cage()
}
print()
for i in tankable {
    i.cleanTank()
}

print()

// Mini Exercise

//assuminmg the formula for circle, from the class code
protocol Shape {
    var area: Double { get }
}


struct Circle: Shape {
    let radius: Double
    
    var area: Double {
        .pi * radius * radius
    }
}

var myCircle = Circle(radius: 4)
print("the area of circle with radius \(myCircle.radius) is \(myCircle.area)")
