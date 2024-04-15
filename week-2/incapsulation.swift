//@@@@@@@@@@@@@@@@@@@@@
//       Incapsulation
//@@@@@@@@@@@@@@@@@@@@@


// 1
class BankAccount {
    private var balance: Float
    
    init (balance: Float) {
        self.balance = balance
    }
    
    func topUp(_ amount: Float) {
        balance = balance + amount
        print("Balance: \(balance)")
    }
    
    func withdraw(_ amount: Float) {
        if amount < balance {
            balance = balance - amount
            print("Balance: \(balance)")
        } else {
            print("Not enough money to withdraw!")
        }
    }
}
let account = BankAccount(balance: 0)
account.topUp(1000)
account.withdraw(1200)
account.withdraw(200)
print()


// 2
class Student {
    private var name: String
    private var age: Int
    private var gpa: Float
    
    init (name:String, age: Int, gpa: Float) {
        self.name = name
        self.age = age
        self.gpa = gpa
    }
    
    func setName (_ name: String) {
        self.name = name
    }
    
    func setAge (_ age: Int) {
        self.age = age
    }
    
    func setGpa (_ gpa: Float) {
        if gpa >= 0 && gpa <= 5 {
            self.gpa = gpa   
        } else {
            print("GPA must be between 0 and 5!\nPlease try again")
        }
    }
    
    func getName() -> String {
        return name
    }
    
    func getAge() -> Int {
        return age
    }
    
    func getGpa() -> Float {
        return gpa
    }
}
let azamat = Student(name: "Azamat", age: 19, gpa: 4.6)

azamat.setAge(20)
azamat.setGpa(6)
azamat.setGpa(5)
print(azamat.getGpa())
print(azamat.getAge())
print()


// 3
class Phone {
    private var phoneNumber: Int
    
    init (phoneNumber: Int) {
        self.phoneNumber = phoneNumber
    }
    
    func setPhoneNumber(_ number: Int) {
        print("Format of number(without brackes): 8(XXX)(XXX)(XX)(XX)")
        if 11 == String(number).count {
            if let firstChar = String(number).first {
                if String(firstChar) == "8" {
                    self.phoneNumber = number
                } else {
                    print("Please, write according to format!")
                }
            }
        } else {
            print("Phone number's length is not 11!")
        }
    }
    
    func getPhoneNumber() -> Int {
        return phoneNumber
    }
}

let number = Phone(phoneNumber: 87779992211)
number.setPhoneNumber(77779992211)
number.setPhoneNumber(87777777777)
print(number.getPhoneNumber())
print()


// 4
class Book {
    private var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func setName(_ name: String) {
        if name.count > 3 {
            self.name = name
        } else {
            print("Name of the book should be more than 3 letters")
        }
    }
    
    func getName() -> String {
        return name
    }
}

let abaiJoly = Book(name: "Abai Joly")
abaiJoly.setName("At")
abaiJoly.setName("Abai Joly: Trilogy")
print(abaiJoly.getName())
print()


// 5
class Car {
    private var brand: String
    private var model: String
    
    init (brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func setBrand(_ brand: String) {
        self.brand = brand
    }
    
    func getBrand() -> String {
        return brand
    }
    
    func setModel(_ model: String) {
        var fordModels = ["aerostar", "aspire", "bantam", "b-MAX", "bronco II", "c-MAX", "contour", "corcel"]
        var kiaModels = ["rio", "rio x", "ceed", "sportage", "sorento", "cerato", "picanto", "seltos"]
        
        if brand.lowercased() == "kia" {
            if kiaModels.contains(model.lowercased()) {
                self.model = model
            } else {
                print("You entered unavailable model for KIA")
            }
        } else if brand.lowercased() == "ford" {
            if fordModels.contains(model.lowercased()) {
                self.model = model
            } else {
                print("You entered unavailable model for FORD")
            }
        }
    }
    
    func getModel()  -> String {
        return model
    }
}

let ford = Car(brand: "Ford", model: "Aspire")
let kia = Car(brand: "Kia", model: "Rio")
kia.setModel("Iro")
ford.setModel("Apire")

kia.setModel("Sorento")
print(kia.getModel())

ford.setModel("Bantam")
print(ford.getModel())
