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
