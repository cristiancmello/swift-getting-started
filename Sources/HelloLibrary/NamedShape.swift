
class NamedShape {
    var numberOfSides: Int = 0 // podemos inicializar a propriedade na declaracao
    var name: String
    
    init(name: String) {
        self.name = name // ou podemos inicializar no initializer
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
