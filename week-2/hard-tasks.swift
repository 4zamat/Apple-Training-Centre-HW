// Hard tasks
// 1
class Library {
    var bookCatalog: [String] = []
    
    init (bookCatalog: [String]) {
        self.bookCatalog = bookCatalog
    }
    
    func addBook(_ book: String) {
        bookCatalog.append(book)
    }
    
    func removeBook(_ book: String) {
        if let index = bookCatalog.firstIndex(of: book) {
            bookCatalog.remove(at: index)
        }
    }
    
    func searchBook(_ book: String) -> String {
        if bookCatalog.contains(book) {
            return "The book is in catalog: \(book)"
        } else {
            return "No such book is found in bookCatalog"
        }
    }
}

let myLibrary = Library(bookCatalog: ["Book 1", "Book 2", "Book 3"])
myLibrary.addBook("Book 4")
print(myLibrary.bookCatalog)
myLibrary.removeBook("Book 4")
print(myLibrary.bookCatalog)

print(myLibrary.searchBook("Book 3"))
print(myLibrary.searchBook("Book 4"))


// 2
class Task {
    var title: String
    var description: String
    var status: String
    
    init (title: String, description: String, status: String) {
        self.title = title
        self.description = description
        self.status = status
    }
    
    func changeStatus(_ taskStatus: String) {
        status = taskStatus
    }
    
    func displayInfo() {
        print("Task title: \(title)")
        print("Task description: \(description)")
        print("Task status: \(status)")
    }
}

var myTask = Task(title: "Homework", description: "Make assignment 1", status: "In process")
myTask.displayInfo()
myTask.changeStatus("Done")
myTask.displayInfo()

// 3
struct Product {
    let name: String
    let price: Double
    let quantityInStock: Int
    let category: String
}

class Store {
    var storage: [Product]
    
    init () {
        self.storage = []
    }
    
    func addGood(_ good: Product) {
        storage.append(good)
    }
    
    func removeGood(_ good: Product) {
        if let index = storage.firstIndex(where: { $0.name == good.name }) {
            storage.remove(at: index)
        }
    }
    
    func searchGood(_ good: String) -> Product?{
        return storage.first(where: { $0.name == good })
    }
    
    func searchGood(category: String) -> [Product] {
        return storage.filter({ $0.category == category })
    }
    
}
let myStore = Store()
let product1 = Product(name: "Apple", price: 150, quantityInStock: 100, category: "Fruit")
myStore.addGood(product1)
print(myStore.storage)
print(myStore.searchGood("Apple"))
myStore.removeGood(product1)
print(myStore.storage)
