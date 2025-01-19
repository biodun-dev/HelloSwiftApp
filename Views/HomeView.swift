import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            DynamicTitleView(title: "Home")
                .overlay(
                    VStack {
                        Text("🚀 Welcome to the App!")
                            .font(.title)
                            .padding()

                        NavigationLink(destination: ProfileView()) {
                            Text("Go to Profile")
                                .padding()
                                .frame(width: 200)
                                .background(Color.white)
                                .foregroundColor(Color.blue)
                        }
                        .contextMenu {
                            ProfilePreviewView()
                                .frame(width: 300, height: 200)
                                .background(Color.white)
                                .cornerRadius(12)
                                .shadow(radius: 5)
                        }
                    }
                )
                .padding()
        }
    }
}

#Preview {
    HomeView()
}
