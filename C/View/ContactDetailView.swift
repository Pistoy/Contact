import SwiftUI

struct ContactDetailView: View {
  
  @Environment(\.dismiss) var dismiss
  
  @Binding var model: ContactViewModel
  var index: Int
  
  var body: some View {
    NavigationView {
      List {
        Button {
          model.index = index
          model.alertShowing = true
        } label: {
          AlertDelete()
        }
      }
      .navigationTitle(model.contacts[index].firstName)
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
