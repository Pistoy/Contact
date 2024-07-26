import SwiftUI

struct ContentView: View {
  @State var model: ContactViewModel
  var body: some View {
    NavigationView {
      List {
        ForEach(model.contacts) { contact in
          NavigationLink {
            ContactDetailView(contact: contact, model: model)
          } label: {
            HStack {
              Text(contact.firstName)
              Spacer()
              Button(role: nil, action: { model.deleteContact(id: contact.id) }, label: { Label("", systemImage: "trash") }).buttonStyle(.borderless)
            }
          }
          .isDetailLink(false)
        }
      }
    }
  }
}
