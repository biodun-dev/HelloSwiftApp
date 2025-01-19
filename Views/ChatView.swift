import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    DynamicTitleView(title: "Chat") 
                        .padding(.top)

                    Text("💬 Chat with your friends!")
                        .font(.title)
                        .padding()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ChatView()
}
