# SwiftUI-Property warpper

To create a custom property wrapper in SwiftUI, you will need to define a struct that has a wrappedValue property, which is the value that the property wrapper will be wrapping. You can then define any additional properties or methods that you want the property wrapper to have.

Here's an example of a custom property wrapper called Uppercase that converts a string to uppercase when it is set:

```swift
@propertyWrapper
struct Uppercase {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }
}
```

You can use the Uppercase property wrapper like this:

```swift
struct ContentView: View {
    @Uppercase var name: String = "John"

    var body: some View {
        Text(name)
    }
}

```
