// Abstract Factory

protocol Book {
    func read()
}

class ScienceFiction: Book {
    func read() {
        print("I'm reading a science fiction book")
    }
}

class Suspense: Book {
    func read() {
        print("I'm reading a suspense book")
    }
}

class Romance: Book {
    func read() {
        print("I'm reading a romance book")
    }
}

let suspense = Suspense()
suspense.read()
let scienceFiction = ScienceFiction()
scienceFiction.read()
let romance = Romance()
romance.read()

// Factory
enum BookType {
    case scienceFiction
    case suspense
    case romance
    
    var book: Book {
        switch self {
        case .scienceFiction:
            return ScienceFiction()
        case .suspense:
            return Suspense()
        case .romance:
            return Romance()
        }
    }
}

let romaceBook = BookType.romance
romaceBook.book.read()
let scienceFictionBook = BookType.scienceFiction
let suspenseBook = BookType.suspense

// Another option

enum LiteraryGenre {
    case scienceFiction
    case suspense
    case romance
}

// Factory
struct BookFactory {
    static func make(type: LiteraryGenre) -> Book {
        switch type {
        case .scienceFiction:
            return ScienceFiction()
        case .suspense:
            return Suspense()
        case .romance:
            return Romance()
        }
    }
}

let book = BookFactory.make(type: .scienceFiction)
book.read()
