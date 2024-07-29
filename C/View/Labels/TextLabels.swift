//
//  TextLabels.swift
//  C
//
//  Created by Emre Cekic on 27.07.2024.
//

import SwiftUI

struct AlertCancel: View {
  var body: some View {
    Text("Cancel")
      .foregroundColor(.blue)
      .bold()
  }
}

struct AlertDelete: View {
  var body: some View {
    Text("Delete")
      .foregroundColor(.red)
      .bold()
  }
}

struct AlertMessage: View {
  var body: some View {
    Text("Are you sure?")
      .bold()
  }
}

