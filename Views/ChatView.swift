import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationStack {
            DynamicTitleView(title: "Chat")
                .overlay(
                    VStack {
                        Text("💬 Chat with your friends!")
                            .font(.title)
                            .padding()
                    }
                )
        }
    }
}

#Preview {
    ChatView()
}
