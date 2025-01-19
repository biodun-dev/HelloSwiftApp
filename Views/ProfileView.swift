import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            DynamicTitleView(title: "Profile")
                .overlay(
                    VStack(spacing: 20) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.blue)
                            .padding()

                        Text("Name: Abbey")
                            .font(.title2)
                            .bold()

                        Text("Bio: Passionate Swift developer with experience in iOS and SwiftUI.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)

                        Spacer()
                    }
                )
        }
    }
}

#Preview {
    ProfileView()
}
