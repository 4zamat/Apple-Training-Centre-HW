//@@@@@@@@@@@@@@@@@@@@@
//       Classes
//@@@@@@@@@@@@@@@@@@@@@


// 1
class Rectangle {
  var width: Int
  var length: Int
  
  init (width: Int, length: Int) {
      self.width = width
      self.length = length
  }
  
  func area() {
    
    print(width * length)
  }
}

let calculateArea = Rectangle(width: 5, length: 5)
let calculateArea2 = Rectangle(width: 3, length: 4)
calculateArea.area()
calculateArea2.area()
print()

// 2
class Book {
    var name: String
    var author: String
    var yearOfPublication: Int
    
    init (name: String, author: String, yearOfPublication: Int) {
        self.name = name
        self.author = author
        self.yearOfPublication = yearOfPublication
    }
    
    func bookInformation() {
        print("Name of the book: \(name) \nAuthor: \(author) \nYear: \(yearOfPublication)")
    }
}

let dune = Book(name: "Dune", author: "Frank Herbert", yearOfPublication: 1965)
let bookThief = Book(name: "The Book Thief", author: "Markus Zusak", yearOfPublication: 2006)
dune.bookInformation()
bookThief.bookInformation()
print()


//3
class Car {
    var brand: String
    var model: String
    var year: Int
    
    init (brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func carInformation() {
        print("Brand of the car: \(brand) \nModel: \(model) \nYear: \(year)")
    }
}

let toyota = Car(brand: "Toyota", model: "corolla", year: 1998)
let hyundai = Car(brand: "Hyundai", model: "elantra", year: 2024)
toyota.carInformation()
hyundai.carInformation()
print()


// 4
class Student {
    var name: String
    var age: Int
    var gpa: Float
    
    init (name:String, age: Int, gpa: Float) {
        self.name = name
        self.age = age
        self.gpa = gpa
    }
    
    func isGpaGreat() {
        print("Student name: \(name)\nStudent age: \(age)")
        if gpa > 4.5 {
            print("Is GPA higher 4.5: yes")
        } else {
            print("Is GPA higher 4.5: no")
        }
    }
}
let azamat = Student(name: "Azamat", age: 19, gpa: 5)
let kozha = Student(name: "Kozha", age: 17, gpa: 4.3)
azamat.isGpaGreat()
kozha.isGpaGreat()

// 5
class bankAccount {
    var accountNumber: Int
    var balance: Int
    
    init(accountNumber: Int, balance: Int) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    func topUp(_ amount: Int) {
        balance = balance + amount
        print("Account Number: \(accountNumber)\nBalance: \(balance)")
    }
    func withdraw(_ amount: Int) {
        if amount < balance {
            balance = balance - amount
            print("Account Number: \(accountNumber)\nBalance: \(balance)")
        } else {
            print("Not enough money to withdraw!")
        }
    }
}

let account = bankAccount(accountNumber: 2004, balance: 0)
account.topUp(1000)
account.withdraw(400)
