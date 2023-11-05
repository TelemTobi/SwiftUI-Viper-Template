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
