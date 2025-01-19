import SwiftUI

struct DynamicTitleView: View {
    let title: String
    @State private var hideNavigationBar = false
    @State private var lastOffset: CGFloat = 0

    var body: some View {
        ScrollView {
            VStack {
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(GeometryReader { geo in
                Color.clear
                    .preference(key: ScrollOffsetKey.self, value: geo.frame(in: .global).minY)
            })
        }
        .onPreferenceChange(ScrollOffsetKey.self) { value in
            if value != lastOffset {
                DispatchQueue.main.async {
                    hideNavigationBar = value < -10
                    lastOffset = value
                }
            }
        }
        .navigationTitle(hideNavigationBar ? "" : title)
        .animation(.easeInOut, value: hideNavigationBar)
    }
}

struct ScrollOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    DynamicTitleView(title: "Home")
}
