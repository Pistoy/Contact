import SwiftUI

struct ContentView: View {
  
  @State var model: ContactViewModel
  
  var body: some View {
    ContactView(model: $model)
  }
}
