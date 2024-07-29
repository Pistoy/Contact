import Foundation

struct ContactViewModel {
  var alertShowing = false
  var id: UUID?
  var contacts = [ContactModel(firstName: "X"),
                  ContactModel(firstName: "N"),
                  ContactModel(firstName: "D")]
  
  mutating func deleteContact() {
    contacts.removeAll { contact in
      contact.id == self.id
    }
  }
  
  mutating func addContact(_ string: String) {
    let filteredStr = string.trimmingCharacters(in: .whitespaces)
    if !filteredStr.isEmpty {
      contacts.append(ContactModel(firstName: filteredStr))
    }
  }
}
