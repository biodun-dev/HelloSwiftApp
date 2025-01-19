import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("🚀 Welcome to the App!")
                    .font(.title)
                    .padding()

                NavigationLink(destination: ProfileView()) {
                    Text("Go to Profile")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
