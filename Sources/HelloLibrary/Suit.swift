
enum Suit: Int {
    case spades = 1, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades: 
            return "spades"
        case .hearts: 
            return "hearts"
        case .diamonds: 
            return "diamonds"
        case .clubs: 
            return "clubs"
        }
    }
}
