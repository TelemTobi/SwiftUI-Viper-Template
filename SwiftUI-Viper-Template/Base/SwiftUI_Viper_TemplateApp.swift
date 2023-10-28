//
//  SwiftUI_Viper_TemplateApp.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 28/10/2023.
//

import SwiftUI

@main
struct SwiftUI_Viper_TemplateApp: App {
    
    private let appController = AppController()
    
    var body: some Scene {
        WindowGroup {
            appController.rootView
        }
    }
}
