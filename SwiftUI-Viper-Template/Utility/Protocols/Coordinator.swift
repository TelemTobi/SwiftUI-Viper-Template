import SwiftUI

protocol Coordinator: AnyObject {
    
    var interactable: Interactable { get set }
    var childCoordinators: [Coordinator] { get set }
    
    var rootView: any View { get }
    
    init(interactable: Interactable)
}
