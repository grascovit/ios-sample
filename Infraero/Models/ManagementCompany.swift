import Foundation

class ManagementCompany {
    private var _name: String
    private var _airports: [Airport]
    
    init(name: String, airports: [Airport]) {
        _name = name
        _airports = airports
    }
    
    var name: String {
        get {
            return _name
        }
        
        set {
            _name = newValue
        }
    }
    
    var airports: [Airport] {
        get {
            return _airports
        }
        
        set {
            _airports = newValue
        }
    }
}
