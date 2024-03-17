
class TriangleAndSquare {
    init(size: Double) {
        self.square = Square(sideLength: size, name: "square")
        self.triangle = EquilateralTriangle(sideLength: size)
    }
    
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
}
