import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    DynamicTitleView(title: "Settings") 
                        .padding(.top)

                    Text("⚙️ Adjust your settings here.")
                        .font(.title)
                        .padding()
                }
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
