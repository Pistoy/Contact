import SwiftUI

struct ContactDetailView: View {
  
  @Environment(\.dismiss) var dismiss
  
  @Binding var model: ContactViewModel
  var contact: ContactModel
  
  var body: some View {
    NavigationView {
      List {
        Button {
          model.id = contact.id
          model.alertShowing = true
        } label: {
          AlertDelete()
        }
      }
      .navigationTitle(contact.firstName)
      .alert("", isPresented: $model.alertShowing) {
        Button(action: {}, label: { AlertCancel() })
        Button {
          model.deleteContact()
          dismiss.callAsFunction()
        } label: {
          AlertDelete()
        }
      } message: {
        AlertMessage()
      }
    }
  }
}
