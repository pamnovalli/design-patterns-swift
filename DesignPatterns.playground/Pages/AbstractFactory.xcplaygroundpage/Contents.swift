/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// 1 - Abstract Factory

protocol ArtisticContentFactory {
    static func makeBook(model: BookModel) -> Book
    static func makeMovie(model: MovieModel) -> Movie
}

// 2 - Concrete Factory

struct ScienceFictionFactory: ArtisticContentFactory {
    static func makeBook(model: BookModel) -> Book {
        return ScienceFictionBook(author: model.author, name: model.name)
    }
    
    static func makeMovie(model: MovieModel) -> Movie {
        return ScienceFictionMovie(director: model.director, name: model.name)
    }
}

struct SuspenseFactory: ArtisticContentFactory {
    static func makeBook(model: BookModel) -> Book {
        return SuspenseBook(author: model.author, name: model.name)
    }
    
    static func makeMovie(model: MovieModel) -> Movie {
        return SuspenseMovie(director: model.director, name: model.name)
    }
}

// 3 - Abstract product

protocol Book {
    var author: String { get set }
    var name: String { get set }
    
    func read()
}

protocol Movie {
    var director: String { get set }
    var name: String { get set }
    
    func watch()
}

// Model

struct MovieModel {
    let director: String
    let name: String
}

struct BookModel {
    let author: String
    let name: String
}

// 4- Concrete product

final class ScienceFictionBook: Book {
    var author: String
    var name: String
    
    init(author: String,
         name: String
    ) {
        self.author = author
        self.name = name
    }
    
    func read() {
        print("Reading a science fiction book")
    }
}

final class ScienceFictionMovie: Movie {
    var director: String
    var name: String
    
    init(director: String,
         name: String
    ) {
        self.director = director
        self.name = name
    }
    
    func watch() {
        print("Watching a science fiction movie")
    }
}

final class SuspenseBook: Book {
    var author: String
    var name: String
    
    init(author: String,
         name: String
    ) {
        self.author = author
        self.name = name
    }
    
    func read() {
        print("Reading a suspense book")
    }
}

final class SuspenseMovie: Movie {
    var director: String
    var name: String
    
    init(director: String,
         name: String
    ) {
        self.director = director
        self.name = name
    }
    
    func watch() {
        print("Watching a suspense  movie")
    }
}

// 5- Client

final class Catalog {
    private let factory: ArtisticContentFactory.Type
    private var booksList: [Book] = []
    private var movieList: [Movie] = []
    
    init(factory: ArtisticContentFactory.Type) {
        self.factory = factory
    }
    
    func addBooks(books: [BookModel]) {
        for book in books {
            booksList.append(factory.makeBook(model: book))
        }
    }
    
    func addMovies(movies: [MovieModel]) {
        for movie in movies {
            movieList.append(factory.makeMovie(model: movie))
        }
    }
    
    func showBooks() {
        for book in booksList {
            print(book.name)
        }
    }
    
    func showMovies() {
        for movie in movieList {
            print(movie.name)
        }
    }
}

let scienceFictionCatalog = Catalog(factory: ScienceFictionFactory.self)
let suspenseCatalog = Catalog(factory: SuspenseFactory.self)

scienceFictionCatalog.addBooks(books: [.init(author: "Isaac Asimov", name: "I, Robot")])

suspenseCatalog.addBooks(books: [.init(author: "Stephen King", name: "It: A Novel")])


scienceFictionCatalog.showBooks()
suspenseCatalog.showBooks()
