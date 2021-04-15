// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Model {
  public let id: String
  public var name: String
  public var description: String?
  public var time: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      name: String,
      description: String? = nil,
      time: Temporal.DateTime? = nil) {
      self.id = id
      self.name = name
      self.description = description
      self.time = time
  }
}