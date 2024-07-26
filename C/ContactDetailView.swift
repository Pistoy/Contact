//
//  ContactDetailView.swift
//  C
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct ContactDetailView: View {
  var contact: ContactModel
  @State var model: ContactViewModel
  var body: some View {
    List {
      TextField("Enter New Name", text: .constant(contact.firstName))
      Button(role: nil) {
        model.deleteContact(id: contact.id)
      } label: {
        Text("Delete")
          .foregroundColor(.red)
      }

    }
  }
}
