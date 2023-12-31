import Foundation

#if DEBUG
enum Mock: String {
    
    case someEndpoint = "SomeEndpoint"
    
    var fileName: String {
        switch self {
        default:
            return self.rawValue
        }
    }
    
    var stringFromFile: String {
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: "json") else {
            fatalError("Stub Json file named: \(fileName) was not found in `Mock` directory.")
        }
        
        do {
            return try String(contentsOfFile: filePath)
        } catch (let error) {
            fatalError(error.localizedDescription)
        }
    }
    
    var dataEncoded: Data {
        stringFromFile.data(using: .utf8)!
    }
}
#endif
