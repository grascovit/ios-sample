import Foundation

class Flight: Equatable {
    private var _number: String
    private var _leavingAt: String
    private var _arrivingAt: String
    private var _airline: Airline
    
    init(number: String, leavingAt: String, arrivingAt: String, airline: Airline) {
        _number = number
        _leavingAt = leavingAt
        _arrivingAt = arrivingAt
        _airline = airline
    }
    
    var number: String {
        get {
            return _number
        }
        
        set {
            _number = newValue
        }
    }
    
    var leavingAt: String {
        get {
            return _leavingAt
        }
        
        set {
            _leavingAt = newValue
        }
    }
    
    var arrivingAt: String {
        get {
            return _arrivingAt
        }
        
        set {
            _arrivingAt = newValue
        }
    }
    
    var airline: Airline {
        get {
            return _airline
        }
        
        set {
            _airline = newValue
        }
    }
    
    static func == (lhs: Flight, rhs: Flight) -> Bool {
        return
            lhs.number == rhs.number &&
                lhs.leavingAt == rhs.leavingAt &&
                lhs.arrivingAt == rhs.arrivingAt
    }
}
