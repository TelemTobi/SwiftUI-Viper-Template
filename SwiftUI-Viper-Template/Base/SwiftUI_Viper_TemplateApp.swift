import SwiftUI

@main
struct SwiftUI_Viper_TemplateApp: App {
    
    private let appController = AppController()
    
    var body: some Scene {
        WindowGroup {
            appController.rootView.toAnyView
        }
    }
}
