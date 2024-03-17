import XCTest

@testable import HelloLibrary

final class EnumTests: XCTestCase {	
    func testRankNeedRangeValues() {
        XCTAssertEqual(1, Rank.ace.rawValue)
        XCTAssertEqual(2, Rank.two.rawValue)
        XCTAssertEqual(3, Rank.three.rawValue)
        XCTAssertEqual(4, Rank.four.rawValue)
    }
    
    func testRankDescription() {
        XCTAssertEqual("two", Rank(rawValue: 2)?.simpleDescription())
        XCTAssertEqual("three", Rank(rawValue: 3)?.simpleDescription())
        XCTAssertEqual("5", Rank(rawValue: 5)?.simpleDescription())
        XCTAssertEqual(nil, Rank(rawValue: 6)?.simpleDescription()) // ALTERNATIVA 1: optional symbol
        
        if let convertedRank = Rank(rawValue: 7) /* ALTERNATIVA 2: unwrapped value */ {
            XCTAssertEqual(nil, convertedRank.simpleDescription())
        }
    }
    
    func testSuitValuesAndDescription() {
        XCTAssertEqual("spades", Suit.spades.simpleDescription())
        XCTAssertEqual("hearts", Suit.hearts.simpleDescription())
        XCTAssertEqual("diamonds", Suit.diamonds.simpleDescription())
        XCTAssertEqual("clubs", Suit.clubs.simpleDescription())
    }
    
    func testServerResponse() {
        var message: String
        
        let success = ServerResponse.result("6:00 am", "8:09 pm")
        
        switch success {
        case let .result(sunrise, sunset):
            message = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
        }
        
        XCTAssertEqual("Sunrise is at 6:00 am and sunset is at 8:09 pm.", message)
    }
}
