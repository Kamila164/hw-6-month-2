import Foundation

//var nissanNP300 = Pickup(brand: "Nissan", model: "Nissan NP300", year: 2013, country: "ЮАР", loadCapacity: 1.6)
//var mitsubishiL200 = Pickup(brand: "Mitsubishi", model: "Mitsubishi L200 ", year: 2010, country: "ЮАР", loadCapacity: 2.8)
//var toyotaHilux = Pickup(brand: "Toyota", model: "Toyota Hilux", year: 2015, country: "Япония", loadCapacity: 1.9)
//
//var jeepRenegade = Jeep(brand: "Jeep", model: "Jeep Renegade", year: 2009, country: "USA", engineVolume: 1.4)
//var grandCherokee = Jeep(brand: "Chrysler", model: "Jeep Grand Cherokee", year: 2018, country: "USA", engineVolume: 3.2)
//var wrangler = Jeep(brand: "Chrysler", model: "Jeep Wrangler", year: 2020, country: "USA", engineVolume: 2)
//
//var compass = Crossover(brand: "Chrysler", model: "Jeep Compass", year: 2013, country: "USA", numberOfTransmissions: 6)
//var creta = Crossover(brand: "Hyundai", model: "Hyundai Creta", year: 2011, country: "Корея", numberOfTransmissions: 6)
//var crv = Crossover(brand: "Honda", model: "Honda CR-V", year: 2017, country: "Япония", numberOfTransmissions: 5)
//
//var car: [Car] = [nissanNP300, mitsubishiL200, toyotaHilux, jeepRenegade, grandCherokee, wrangler, compass, creta, crv]
//
//for i in car{
//    i.showInfo()
//}


var food1 = Food(name: "Морская капуста", price: 270, srok: "12 месяцев", weight: 16)
var food2 = Food(name: "Рамен", price: 100, srok: "12 месяцев", weight: 110)
var food3 = Food(name: "Чипсы", price: 90, srok: "2 месяца", weight: 60)
var food4 = Food(name: "Батончики", price: 300, srok: "6 месяцев", weight: 220)
var food5 = Food(name: "Фруктовые закуски", price: 420, srok: "6 месяцев", weight: 200)

var drink1 = Drink(name: "Kola", price: 45, srok: "12 месяцев", weight: 7)
var drink2 = Drink(name: "Fanta", price: 45, srok: "12 месяцев", weight: 7)
var drink3 = Drink(name: "Sprite", price: 45, srok: "12 месяцев", weight: 7)
var drink4 = Drink(name: "Nitro", price: 68, srok: "12 месяцев", weight: 5)
var drink5 = Drink(name: "Вода", price: 25, srok: "12 месяцев", weight: 7)

var soapwasher1 = SoapWasher(name: "Dove", price: 90, srok: "12 месяцев", weight: 18)
var soapwasher2 = SoapWasher(name: "Nivea", price: 100, srok: "12 месяцев", weight: 20)
var soapwasher3 = SoapWasher(name: "CeraVe", price: 900, srok: "12 месяцев", weight: 10)
var soapwasher4 = SoapWasher(name: "Bioderma", price: 1500, srok: "12 месяцев", weight: 18)
var soapwadher5 = SoapWasher(name: "Babor", price: 3000, srok: "12 месяцев", weight: 20)

var electronics1 = Electronics(name: "Кофемашина", price: 5000, srok: "12 месяцев", weight: 7)
var electronics2 = Electronics(name: "Микроволновка", price: 7000, srok: "12 месяцев", weight: 15)
var electronics3 = Electronics(name: "Ноутбук", price: 50000, srok: "12 месяцев", weight: 2)
var electronics4 = Electronics(name: "Пылесос", price: 7000, srok: "12 месяцев", weight: 5)
var electronics5 = Electronics(name: "Телевизор", price: 19000, srok: "12 месяцев", weight: 35)

var array: [Product] = [food1, food2, food3, food4, food5, drink1, drink2, drink3, drink4, drink5, soapwasher1, soapwasher2, soapwasher3, soapwasher4, soapwadher5, electronics1, electronics2, electronics3, electronics4, electronics5]

func deliveryService(productName: [String], amount: Int, country: String){
    let delivery = 500
    let date = "6.12.2022"
    let time = "00:46"
    let timeOfDelivery = "2 недели"
    let rating = "5 звезд"
    var bool = false
    var total = 0
    var price = 0
    
    for i in array{
        for j in productName{
            if j == i.name{
                bool = true
                price += i.price
            }
        }
    }
        
    if bool == true{
        if country == "Казахстан" || country == "Кыргызстан" || country == "Узбекистан"{
            total = price * amount + delivery
            print("ФИО: \(userName) \nДата заказа: \(date) \nВремя заказа: \(time) \nПримерное время доставки: \(timeOfDelivery) \nЦена за доставку: \(delivery) \nОбщая сумма заказа: \(total) \nОценка: \(rating)")
        }else{
            print("Доставка в этот город недоступна")
        }
    }else{
        print("Такого товара нет. Попробуйте еще раз")
    }
    
}

var stop = false
var productArray: [String] = []

print("Мы доставляем в Казахстан, Кыргызстан, Узбекистан.\nВведите название товара и количество, а так же страну, куда хотите отправить")
print("Введите ФИО:")
var userName = readLine()!

while stop == false{
    print("Введите название товара:")
    let productName = readLine()!
    if productName.count == 0{
        stop = true
    }else{
        productArray.append(productName)
    }
}

print("Введите кол-во:")
var amount = readLine()!
print("Введите страну:")
var country = readLine()!

deliveryService(productName: productArray, amount: Int(amount)!, country: country)
