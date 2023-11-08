# SwiftUI Viper Template

A comprehensive project template featuring the Viper architecture, Coordinator pattern, and Networking components all set up for you.<br/>
In addition, you'll benefit from a collection of useful extensions, modifiers, and a demo module to kickstart your project.

For an even faster module creation compatible with this architecture, check out the [Viper Module Xcode Template](https://github.com/TelemTobi/Viper-Module-Xcode-Template.git).

<br/>

## Understanding the Architecture

This template follows the Viper architecture and includes the following key components:

### AppController
The **AppController** serves as the root component of your app. It takes care of initializing the core components and the app itself. Moreover, it handles app-specific logic, including tasks like managing deep links.

### AppCoordinator
The **AppCoordinator** conforms to the `Coordinator` protocol and is responsible for managing the initial app navigation and launching other flows. This component remains free of any business logic, focusing solely on navigation.

### AppData
**AppData** is an `ObservableObject` that holds data accessible throughout your entire project. To achieve reactivity, consider using `@Published` properties within this object.

### Services
The **Services** class houses all the services your app provides, which are accessible through the `Interactor`. These services handle device-specific operations, such as managing contacts, bluetooth, or notifications.

### Interactor
The **Interactor** has access to `AppData`, `Services`, and `DataProviders`. Every module you create utilizes this component to interact with the external world.

<br/>

## Navigation with the Coordinator Pattern

The Coordinator pattern is a widely used design pattern in Swift/iOS applications that facilitates the management of navigation and view flow within an app.<br/>
The main idea behind this pattern is to decouple the navigation logic from the views, thereby making it easier to maintain and extend the application over time.
<br/><br/>
The `Coordinator` protocol, which all coordinators must conform to, is defined as follows:
```swift
protocol Coordinator: AnyObject {
    
    var interactable: Interactable { get set }
    var childCoordinators: [Coordinator] { get set }
    
    var rootView: any View { get }
    
    init(interactable: Interactable)
}
```
- `Interactable` is a protocol that the Interactor conforms to, exposing only the relevant elements to the modules.
- `childCoordinators` is an array of coordinators, maintaining references to each sub-coordinator initialized by the current coordinator.
- `rootView` provides the root View for the flow to be initially presented.

Your project can incorporate as many coordinators as needed, with each coordinator managing a complete flow within your application.

<br/>

## Networking

TBD
