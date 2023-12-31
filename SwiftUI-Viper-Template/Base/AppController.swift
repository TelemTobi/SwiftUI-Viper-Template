import Foundation
import SwiftUI

class AppController {
    
    private let interactor: Interactor
    private let coordinator: AppCoordinator
    
    init() {
        let appData = AppData()
        let services = Services()
        let dataProviders = DataProviders(appData: appData)
        
        interactor = Interactor(appData: appData, services: services, dataProviders: dataProviders)
        coordinator = AppCoordinator(interactable: interactor)
    }
    
    @MainActor
    var rootView: any View {
        coordinator.rootView
    }
}
