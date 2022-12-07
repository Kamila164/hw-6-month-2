import Foundation

struct Crossover: Car{
    var brand: String
    var model: String
    var year: Int
    var country: String
    var numberOfTransmissions: Int
    
    func showInfo() {
        print("Кроссовер. Марка - \(brand). Модель - \(model). Год выпуска -  \(year). Страна производителя - \(country). Кол-во передач - \(numberOfTransmissions)")
    }
    
    
}
