import SwiftUI

struct ProfilePreviewView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("👤 Profile Preview")
                    .font(.title2)
                    .bold()

                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120) 
                    .foregroundColor(.blue)
                    .padding()

                Text("User: Abiodun")
                    .font(.headline)
                    .foregroundColor(.primary)

                Text("Bio: Passionate about Swift development.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                NavigationLink(destination: ProfileView()) {
                    Text("Tap to view full profile")
                        .font(.body)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.2))
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
            }
            .padding()
            .frame(width: 350, height: 300)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 8)
        }
    }
}

#Preview {
    ProfilePreviewView()
}
