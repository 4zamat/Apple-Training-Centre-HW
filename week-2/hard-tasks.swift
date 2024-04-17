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
