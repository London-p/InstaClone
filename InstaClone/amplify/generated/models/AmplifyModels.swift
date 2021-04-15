// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "a22b9cb7cf460a8fed378d7493f8ab15"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Message.self)
  }
}