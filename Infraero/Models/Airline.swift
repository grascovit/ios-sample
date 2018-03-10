import Foundation

class Airline {
    private var _name: String
    
    init(name: String) {
        _name = name
    }
    
    var name: String {
        get {
            return _name
        }
        
        set {
            _name = newValue
        }
    }
}
