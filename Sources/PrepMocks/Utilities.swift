import Foundation

enum PrepMockError: Error {
    case couldNotConstructPath
}

func getDataForJSON(named name: String) throws -> Data {
    guard let path = Bundle.module.path(forResource: name, ofType: "json") else {
        throw PrepMockError.couldNotConstructPath
    }
    
    return try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
}

func loadMock<T>(_ type: T.Type, named mockName: String) throws -> T where T : Decodable {
    let data = try getDataForJSON(named: mockName)
    return try JSONDecoder().decode(type, from: data)
}

public func writeEncodableToJSON(_ encodable: Encodable, type: String) {
    guard let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
        return
    }
    Task {
        do {
            let directoryUrl = documentsUrl.appending(component: UUID().uuidString)
            try FileManager.default.createDirectory(at: directoryUrl, withIntermediateDirectories: false)
            
            let encoder = JSONEncoder()
            let data = try encoder.encode(encodable)

            let url = directoryUrl.appending(component: "\(UUID().uuidString).json")
            try data.write(to: url)
            print("📝 Wrote \(type) to: \(directoryUrl)")
        } catch {
            print("Error writing: \(error)")
        }
    }
}
