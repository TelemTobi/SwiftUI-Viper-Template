//
//  Errorable.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import Foundation

protocol Errorable: Error, Codable, JsonResolver {
    var debugDescription: String { get }
    init(errorType: PredefinedError?)
}
