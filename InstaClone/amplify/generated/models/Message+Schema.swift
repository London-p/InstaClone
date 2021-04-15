// swiftlint:disable all
import Amplify
import Foundation

extension Message {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case description
    case time
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let message = Message.keys
    
    model.pluralName = "Messages"
    
    model.fields(
      .id(),
      .field(message.name, is: .required, ofType: .string),
      .field(message.description, is: .optional, ofType: .string),
      .field(message.time, is: .optional, ofType: .dateTime)
    )
    }
}