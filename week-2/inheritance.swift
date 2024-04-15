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
