//
//  ViewModel.swift
//  C
//
//  Created by Emre Cekic on 26.07.2024.
//

import Foundation

struct ContactViewModel {
  var contacts = [ContactModel(firstName: "X"),
                  ContactModel(firstName: "N"),
                  ContactModel(firstName: "D")]
  
  mutating func deleteContact(id: UUID) {
    contacts.removeAll(where: { id == $0.id })
  }
  
}

