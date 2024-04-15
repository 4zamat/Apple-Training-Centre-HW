//@@@@@@@@@@@@@@@@@@@@@
//       Inheritance
//@@@@@@@@@@@@@@@@@@@@@


// 1
class Shape {
    
    
    func countArea() -> Float {
        fatalError("countArea must be implemented by subclasses")
    }
}

class Rectangle: Shape {
    var a: Float
    
    init (a: Float) {
        self.a = a
    }
    
    override func countArea() -> Float {
        return a * a
    }
}

class Square: Shape {
    var a: Float
    var b: Float
    
    init(a: Float, b: Float) {
        self.a = a
        self.b = b
    }
    
    override func countArea() -> Float {
        return a * b
    }
}

class Triangle: Shape {
    var base: Float
    var height: Float

    init(base: Float, height: Float) {
        self.base = base
        self.height = height
    }
    
    override func countArea() -> Float {
        return 0.5 * base * height
    }
}

let square = Square(a: 6, b: 5)
let rectangle = Rectangle(a: 5)
let triangle = Triangle(base: 7, height: 5)

print("Square area: \(square.countArea())")
print("Rectangle area: \(rectangle.countArea())")
print("Triangle area: \(triangle.countArea())")
print()


// 2
class Vehicle {
    func motion() {
        fatalError("motion must be implemented by subclasses")
    }

}

class Car: Vehicle {
    override func motion() {
        print("Car moves with 4 tires and fuel-powered")
    }
}

class Bicycle: Vehicle {
    override func motion() {
        print("Bicycle has 2 tires and human-powered")
    }
}

class Motorbike: Vehicle {
    override func motion() {
        print("Motorbike has 2 tires. Unlike Bicycle, it is fuel-powered")
    }
}

let car = Car()
car.motion()
let bicycle = Bicycle()
bicycle.motion()
let motorbike = Motorbike()
motorbike.motion()
print()


// 3
class Animal {
    func sound() {
        fatalError("sound must be implemented by subclasses")
    }
}

class Cat: Animal {
    override func sound() {
        print("Cat goes Meow")
    }
}

class Dog: Animal {
    override func sound() {
        print("Dog goes Woof")
    }
}

class Lion: Animal {
    override func sound() {
        print("Lion goes Roar")
    }
}

let cat = Cat()
cat.sound()
let dog = Dog()
dog.sound()
let lion = Lion()
lion.sound()
print()


// 4
class Fruit {
    func eat() {
        fatalError("Eat must be implemented by subclasses")
    }
}

class Apple: Fruit {
    override func eat() {
        print("Apple is eaten")
    }
}

class Peach: Fruit {
    override func eat() {
        print("Peach is eaten")
    }
}

class Tangerine: Fruit {
    override func eat() {
        print("Tangerine is eaten")
    }
}

let apple = Apple()
apple.eat()
let peach = Peach()
peach.eat()
let tangerine = Tangerine()
tangerine.eat()
print()


// 5
class Figure {
    func draw() {
        fatalError("Draw must be implemented by subclasses")
    }
}

class Circle2: Figure {
    override func draw() {
        print("We drew a Circle")
    }
}

class Square2: Figure {
    override func draw() {
        print("We drew a Square")
    }
}

class Triangle2: Figure {
    override func draw() {
        print("We drew a Triangle")
    }
}

let circle2 = Circle2()
circle2.draw()
let square2 = Square2()
square2.draw()
let triangle2 = Triangle2()
triangle2.draw()
print()
