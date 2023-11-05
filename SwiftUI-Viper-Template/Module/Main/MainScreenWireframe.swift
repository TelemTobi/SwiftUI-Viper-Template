import SwiftUI

class MainScreenWireframe {
    
    @MainActor
    static func makeView(interactor: MainScreenInteractable, router: MainScreenRouter?) -> some View {
        let presenter = MainScreenPresenter(interactor: interactor, router: router)
        return MainScreenView(presenter: presenter)
    }
}
