//
//  ContactAddView.swift
//  C
//
//  Created by Emre Cekic on 27.07.2024.
//

import SwiftUI

struct ContactAddView: View {
  
  @Environment(\.dismiss) var dismiss
  
  @Binding var model: ContactViewModel
  @State private var name: String = ""
  
  var body: some View {
    List {
      TextField("Enter New Contact Name", text: $name)
      Button("Add New Contact") {
        dismiss.callAsFunction()
        model.addContact(name)
      }
    }
  }
}
