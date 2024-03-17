
enum Rank: Int {
    case ace = 1
    case two, three, four, five
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "one"
        case .two:
            return "two"
        case .three:
            return "three"
        default:
            return String(self.rawValue)
        }
    }
}
