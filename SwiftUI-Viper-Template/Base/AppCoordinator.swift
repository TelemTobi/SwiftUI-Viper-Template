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
    var interactor: Interactable
    var childCoordinators: [Coordinator] = []
    
    required init(interactor: Interactor) {
        self.window = UIWindow.main ?? UIWindow()
        self.interactor = interactor
    }
    
    @MainActor
    func start() {
        
    }
    
    func finish() {
        
    }
    
    // MARK: - Main Screen
    
    @MainActor
    var mainScreenView: MainScreenView {
        let interactor = MainScreenInteractor(interactable: interactor)
        let view = MainScreenWireframe.makeView(interactor: interactor, router: self)
        return view
    }
}
