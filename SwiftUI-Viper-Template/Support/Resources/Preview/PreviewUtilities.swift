//
//  PreviewUtilities.swift
//  SwiftUI-Viper-Template
//
//  Created by Telem Tobi on 29/10/2023.
//

import Foundation

extension AppController {
    
    enum Preview {
        
        static var interactor: Interactor {
            let appData = AppData()
            return Interactor(
                appData: appData,
                services: Services(),
                dataProviders: DataProviders(appData: appData)
            )
        }
        
    }
}
