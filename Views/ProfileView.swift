import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Text("Name: Abbey")
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    ProfileView()
}
