//
//  DesignSystemColor.swift
//  InfolioDesignSystem
//
//  Created by Volnei Foss on 07/06/25.
//
import SwiftUI

public enum DesignSystemColor {
    case primary
    case secondary
    case background
    case textPrimary
    case textSecondary
    case accent
    case error
    case success

    public var color: Color {
        switch self {
        case .primary:
            return Color(hex: "#1E1E1E")
        case .secondary:
            return Color(hex: "#2D2D2D")
        case .background:
            return Color(hex: "#FFFFFF")
        case .textPrimary:
            return Color(hex: "#000000")
        case .textSecondary:
            return Color(hex: "#777777")
        case .accent:
            return Color(hex: "#0066FF")
        case .error:
            return Color(hex: "#FF3B30")
        case .success:
            return Color(hex: "#34C759")
        }
    }
}
