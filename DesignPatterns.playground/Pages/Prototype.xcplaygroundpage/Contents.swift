// Prototype

struct Developer {
    let languages: [String]
    
    func clone() -> Self {
        return .init(languages: languages)
    }
}

let developer = Developer(languages: ["swift", "objective-c", "kotlin"])

let prototype = developer.clone()
prototype.languages

