import Foundation

struct Pickup: Car{
    var brand: String
    var model: String
    var year: Int
    var country: String
    var loadCapacity: Double
    
    func showInfo() {
        print("Пикап. Марка - \(brand). Модель - \(model). Год выпуска -  \(year). Страна производителя - \(country). Грузоподъёмность - \(loadCapacity).")
    }
}
