
class EquilateralTriangle: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: "equilateral triangle")
    }
    
    convenience init() {
        self.init(sideLength: 0)
    }
    
    var perimeter: Double {
        get {
            return 3 * sideLength
        }
        set { // ou set (value) {}
            sideLength = newValue / 3
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
