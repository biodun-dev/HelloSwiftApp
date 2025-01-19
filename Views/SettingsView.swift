import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            DynamicTitleView(title: "Settings")
                .overlay(
                    VStack {
                        Text("⚙️ Adjust your settings here.")
                            .font(.title)
                            .padding()
                    }
                )
        }
    }
}

#Preview {
    SettingsView()
}
