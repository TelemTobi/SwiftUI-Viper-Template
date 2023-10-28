//
//  MainScreenPresenter.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

@MainActor
class MainScreenPresenter: ObservableObject {
    
    // MARK: - Properties
    
    private let interactor: MainScreenInteractable
    private weak var router: MainScreenRouter?

    // MARK: - Initialiser
    
    init(interactor: MainScreenInteractable, router: MainScreenRouter?) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Methods
    
    func onFirstAppear() {
        
    }
}
