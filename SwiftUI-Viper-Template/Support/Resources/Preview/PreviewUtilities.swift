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
