import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            ContentView() // After the delay, show ContentView
        } else {
            VStack {
                Image(systemName: "applelogo") // Use any system icon or custom image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)

                Text("My App")
                    .font(.largeTitle)
                    .bold()
                    .padding()

                Text("Loading...")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
