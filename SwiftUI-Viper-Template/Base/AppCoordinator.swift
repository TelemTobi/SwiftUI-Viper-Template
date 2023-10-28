//
//  AppCoordinator.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

// TODO: Come up with a better coordinator pattern for SwiftUI ⚠️

class AppCoordinator: Coordinator, MainScreenRouter {
    
    let window: UIWindow
    var interactable: Interactable
    var childCoordinators: [Coordinator] = []
    
    required init(interactable: Interactable) {
        self.window = UIWindow.main ?? UIWindow()
        self.interactable = interactable
    }
    
    @MainActor
    func start() {
        
    }
    
    func finish() {
        
    }
    
    // MARK: - Main Screen
    
    @MainActor
    var mainScreenView: MainScreenView {
        let interactor = MainScreenInteractor(interactable: interactable)
        let view = MainScreenWireframe.makeView(interactor: interactor, router: self)
        return view
    }
}
