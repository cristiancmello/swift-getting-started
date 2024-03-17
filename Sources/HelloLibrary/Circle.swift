
class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
        super.init(name: "circle")
    }
    
    convenience init() {
        self.init(radius: 0)
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with area \(area())."
    }
}
