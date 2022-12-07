import Foundation

struct Jeep: Car{
    var brand: String
    var model: String
    var year: Int
    var country: String
    var engineVolume: Double
    
    func showInfo() {
        print("Jeep. Марка - \(brand). Модель - \(model). Год выпуска -  \(year). Страна производителя - \(country). Объем двигателя - \(engineVolume).")
    }
    
    
}
