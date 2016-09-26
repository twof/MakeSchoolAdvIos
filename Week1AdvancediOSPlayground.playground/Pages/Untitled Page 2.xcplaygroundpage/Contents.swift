//: [Previous](@previous)

class OpenWeatherMapAPI {
    init(apikey: String) {
        
    }
    
    func getForcast(for numDays: Int, location: String) -> [Weather] {
        
    }
    
    func getCurrentForcast(location: String) -> Weather {
        
    }
    
    func getCurrentForcast(longitude: Double, latitude: Double) -> Weather {
    }
    
    func getCurrentForcast(zipcode: Int) -> Weather {
        
    }

    func getCurrentForcast(longitudeLeft: Double, latitudeLeft: Double, longitudeRight: Double, latitudeRight: Double) -> Weather {
        
    }
}

struct Weather {
    
}

struct Forcast {
    let weatherForcast: [Weather]
}

//: [Next](@next)
