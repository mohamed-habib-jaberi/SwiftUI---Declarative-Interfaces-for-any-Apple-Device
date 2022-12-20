#Property Wrappers in SwiftUI
Property wrappers are a way to add additional behavior to properties of a struct or class in SwiftUI. They allow you to attach specific behaviors to a property, such as storing the property in user defaults, observing changes to the property, or synchronizing the property across multiple views.

#Common Property Wrappers
Here are some common property wrappers in SwiftUI:

#@State
@State is used to store a mutable property of a view. When the property changes, the view will automatically be invalidated and redrawn. @State properties are only used within a view and should not be shared with other parts of the app.

#@Binding
@Binding is used to create a reference to a @State property from another view. It allows you to pass a @State property from a parent view to a child view, so that the child view can modify the value of the property and have the changes reflected in the parent view.

#@ObservedObject
@ObservedObject is used to store an object that conforms to the ObservableObject protocol. ObservableObject is a class that can be used to store data that needs to be shared across multiple views. When the data changes, the views that are observing the object will be automatically invalidated and redrawn.

#@Published
@Published is used to automatically send notifications when a property of an ObservableObject changes. It is typically used in conjunction with the @ObservedObject property wrapper to send notifications to views that are observing the object.
