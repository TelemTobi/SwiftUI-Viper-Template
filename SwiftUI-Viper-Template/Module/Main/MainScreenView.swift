//
//  MainScreenView.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

struct MainScreenView: View {
    
    @ObservedObject private var presenter: MainScreenPresenter
    
    init(presenter: MainScreenPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onFirstAppear(perform: presenter.onFirstAppear)
    }
}

#Preview {
    let interactor = MainScreenInteractor(interactable: AppController.Preview.interactor)
    let presenter = MainScreenPresenter(interactor: interactor, router: nil)

    return MainScreenView(presenter: presenter)
}
