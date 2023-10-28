//
//  TargetEndPoint.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import Foundation
import Moya

protocol TargetTypeEndPoint: TargetType {
    var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy { get }
    var dateDecodingStrategy: JSONDecoder.DateDecodingStrategy { get }
    
    #if DEBUG
    var shouldRequestStub: Bool { get }
    var shouldPrintLogs: Bool { get }
    #endif
}
