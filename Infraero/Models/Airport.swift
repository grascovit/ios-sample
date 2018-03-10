import Foundation

class Airport {
    private var _name: String
    private var _flights: [Flight]
    
    init(name: String, flights: [Flight]) {
        _name = name
        _flights = flights
    }
    
    var name: String {
        get {
            return _name
        }
        
        set {
            _name = newValue
        }
    }
    
    var flights: [Flight] {
        get {
            return _flights
        }
        
        set {
            _flights = newValue
        }
    }
    
    func addFlight(flight: Flight) {
        _flights.append(flight)
    }
    
    func removeFlight(flight: Flight) {
        if let flightIndex = _flights.index(of: flight) {
            _flights.remove(at: flightIndex)
        }
    }
}
