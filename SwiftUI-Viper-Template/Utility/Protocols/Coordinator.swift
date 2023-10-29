//
//  Coordinator.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

protocol Coordinator: AnyObject {
    
    var interactable: Interactable { get set }
    var childCoordinators: [Coordinator] { get set }
    
    var rootView: any View { get }
    
    init(interactable: Interactable)
}
