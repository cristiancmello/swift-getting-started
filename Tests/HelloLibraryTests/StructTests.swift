import XCTest

@testable import HelloLibrary

class StructTests: XCTestCase {
    func combinateCards() -> [Card] {
        var combinated: [Card] = []
        
        for suitIndex in 1..<5 {
            if let suit = Suit(rawValue: suitIndex) {
                for rankIndex in 1..<5 {
                    if let rank = Rank(rawValue: rankIndex) {
                        combinated.append(Card(rank: rank, suit: suit))
                    }
                }
            }
        }
        return combinated
    }
    
    func cardsContains(cards: [Card], simpleDescription: String) {
        XCTAssertTrue(cards.contains { card in card.simpleDescription() == simpleDescription })
    }
    
    func cardsContainersSimpleDescriptions(cards: [Card], simpleDescriptions: [String]) {
        for simpleDescription in simpleDescriptions {
            cardsContains(cards: cards, simpleDescription: simpleDescription)
        }
    }
    
    func testCreatingCards() throws {
        // Diferença entre Struct e Class: struct passagem por valor; class passagem por referência
        XCTAssertEqual("The two of spades", Card(rank: Rank.two, suit: Suit.spades).simpleDescription())
        XCTAssertEqual("The three of hearts", Card(rank: Rank.three, suit: Suit.hearts).simpleDescription())
    }
    
    func testCombCards() throws {
        let combinatedCards = combinateCards()
        
        cardsContainersSimpleDescriptions(cards: combinatedCards, simpleDescriptions: [
            "The one of spades",
            "The two of spades",
            "The three of spades",
            "The 4 of spades",
            "The one of hearts",
            "The two of hearts",
            "The three of hearts",
            "The 4 of hearts",
            "The one of diamonds",
            "The two of diamonds",
            "The three of diamonds",
            "The 4 of diamonds",
            "The one of clubs",
            "The two of clubs",
            "The three of clubs",
            "The 4 of clubs"
        ])
    }
}
