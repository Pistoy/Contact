//
//  ContactView.swift
//  C
//
//  Created by Emre Cekic on 27.07.2024.
//

import SwiftUI

struct ContactView: View {
  
  @Binding var model: ContactViewModel
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(0..<model.contacts.count, id: \.self) { index in
          NavigationLink {
            ContactDetailView(model: $model, index: index)
          } label: {
            HStack {
              Text(model.contacts[index].firstName)
              Spacer()
              Button(action: {
                model.index = index
                model.alertShowing = true
              }) {
                Image(systemName: "trash")
                  .foregroundColor(.red)
              }
              .buttonStyle(.borderless)
            }
          }
        }
      }
      .alert("", isPresented: $model.alertShowing) {
        HStack {
          Button(action: {}, label: { AlertCancel() })
          Button(action: {
            model.deleteContact()
          }, label: { AlertDelete() })
        }
      } message: {
        AlertMessage()
      }
      .navigationTitle("Contacts")
      .toolbar {
        ToolbarItem {
          NavigationLink(destination: { ContactAddView(model: $model) }) {
            Image(systemName: "plus")
          }
        }
      }
    }
  }
}
