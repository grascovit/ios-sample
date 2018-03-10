import Foundation

class Flight: Equatable {
    private var _number: String
    private var _leavingAt: String
    private var _arrivingAt: String
    private var _from: String
    private var _to: String
    private var _airline: Airline

    init(number: String, leavingAt: String, arrivingAt: String, from: String,
         to: String, airline: Airline) {
        _number = number
        _leavingAt = leavingAt
        _arrivingAt = arrivingAt
        _from = from
        _to = to
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
    
    var from: String {
        get {
            return _from
        }
        
        set {
            _from = newValue
        }
    }
    
    var to: String {
        get {
            return _to
        }
        
        set {
            _to = newValue
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
