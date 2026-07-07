import SwiftUI

/// Unique visual identity for Blink Break.
enum Theme {
    static let accent = Color(hex: "#3AA0FF")
    static let background = Color(hex: "#0B1626")
    static let card = Color(hex: "#0B1626").opacity(0.55)
    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.6)

    static let titleFont = Font.system(.title2, design: .rounded).weight(.bold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
