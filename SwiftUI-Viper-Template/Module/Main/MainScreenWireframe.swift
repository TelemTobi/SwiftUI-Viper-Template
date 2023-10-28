//
//  MainScreenWireframe.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import Foundation

class MainScreenWireframe {
    
    @MainActor
    static func makeView(interactor: MainScreenInteractable, router: MainScreenRouter?) -> MainScreenView {
        let presenter = MainScreenPresenter(interactor: interactor, router: router)
        return MainScreenView(presenter: presenter)
    }
}
