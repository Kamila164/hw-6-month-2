import Foundation

protocol Car{
    var brand: String { get set }
    var model: String { get set }
    var year: Int { get set }
    var country: String { get set }
    func showInfo()
}
