//
//  Copyright © 2020 lukwol. All rights reserved.
//

import Foundation

/// Describes type decodable from JSON
public protocol JSONDecodable: Decodable {
    
    /// Configured JSONDecoder. Defaults to uncofnigured JSONDecoder.
    static var jsonDecoder: JSONDecoder { get }
}

public extension JSONDecodable {
    static var jsonDecoder: JSONDecoder {
        JSONDecoder()
    }
    
    /// Decode type from JSON
    /// - Parameter json: Encoded JSON data
    static func decode(from json: Data) throws -> Self {
        try jsonDecoder.decode(Self.self, from: json)
    }
}
