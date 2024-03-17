import XCTest

@testable import HelloLibrary

final class HelloLibraryTests: XCTestCase {
    func testSquareZeroArea() throws {
        let shape = Square(sideLength: 0, name: "empty shape")
        
        XCTAssertEqual(0, shape.area())
    }
    
    func testSquareWithSide4WillHave16Area() throws {
        let shape = Square(sideLength: 4, name: "square")
        
        XCTAssertEqual(16.0, shape.area())
        XCTAssertEqual(4, shape.numberOfSides)
        XCTAssertEqual("A square with sides of length 4.0.", shape.simpleDescription())
    }
    
    func testCircleZeroArea() throws {
        let circle = Circle()
        
        XCTAssertEqual(0, circle.area())
    }
    
    func testCircleWithArea() throws {
        let circle = Circle(radius: 2.0)
        
        XCTAssertEqual(12.56, circle.area())
        XCTAssertEqual("A circle with area 12.56.", circle.simpleDescription())
    }
    
    func testEquilateralTrianglePerimeterZero() throws {
        let equilateralTriangle = EquilateralTriangle()
        
        XCTAssertEqual(0, equilateralTriangle.perimeter)
    }
    
    func testEquilateralTriangleWithPerimeter() throws {
        let equilateralTriangle = EquilateralTriangle(sideLength: 3.1)
        
        XCTAssertEqual(9.3, equilateralTriangle.perimeter)
    }
    
    func testGettingSideLengthOfEquilateralTriangleByPerimeter() throws {
        let equilateralTriangle = EquilateralTriangle()
        
        equilateralTriangle.perimeter = 9.3
        
        XCTAssertEqual(3.1, equilateralTriangle.sideLength)
        XCTAssertEqual("An equilateral triangle with sides of length 3.1.", equilateralTriangle.simpleDescription())
    }
    
    func testTriangleAndSquareWithSameSideLength() throws {
        let triangleAndSquare = TriangleAndSquare(size: 10)
        
        XCTAssertEqual(10, triangleAndSquare.triangle.sideLength)
        XCTAssertEqual(10, triangleAndSquare.square.sideLength)
        
        triangleAndSquare.square = Square(sideLength: 11, name: "square")
        
        XCTAssertEqual(11, triangleAndSquare.triangle.sideLength)
        XCTAssertEqual(11, triangleAndSquare.square.sideLength)
        
        triangleAndSquare.triangle = EquilateralTriangle(sideLength: 12)
        
        XCTAssertEqual(12, triangleAndSquare.square.sideLength)
        XCTAssertEqual(12, triangleAndSquare.triangle.sideLength)
    }
}
