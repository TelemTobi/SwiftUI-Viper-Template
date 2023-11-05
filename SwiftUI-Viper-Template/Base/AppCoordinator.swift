import SwiftUI

class AppCoordinator: Coordinator, MainScreenRouter {
    
    var interactable: Interactable
    var childCoordinators: [Coordinator] = []
    
    required init(interactable: Interactable) {
        self.interactable = interactable
    }
    
    @MainActor
    var rootView: any View {
        mainScreenView
    }
    
    // MARK: - Main Screen
    
    @MainActor
    private var mainScreenView: any View {
        let interactor = MainScreenInteractor(interactable: interactable)
        let view = MainScreenWireframe.makeView(interactor: interactor, router: self)
        return view
    }
}
