//
//  MainScreenWireframe.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

class MainScreenWireframe {
    
    @MainActor
    static func makeView(interactor: MainScreenInteractable, router: MainScreenRouter?) -> any View {
        let presenter = MainScreenPresenter(interactor: interactor, router: router)
        return MainScreenView().environmentObject(presenter)
    }
}
