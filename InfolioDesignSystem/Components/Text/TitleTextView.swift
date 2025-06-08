//
//  TitleTextView.swift
//  InfolioDesignSystem
//
//  Created by Volnei Foss on 07/06/25.
//
import SwiftUI

private enum Constants {
    static let title1: String = "Título H1"
    static let title2: String = "Título H2"
    static let title3: String = "Título H3"
    
    static let vStackSpacing: CGFloat = 8
    static let lineLimit: Int = 1
}

public struct TitleTextView: View {
    
    enum Style {
        case h1
        case h2
        case h3
        
        var fontSize: CGFloat {
            switch self {
            case .h1:
                return 34
            case .h2:
                return 28
            case .h3:
                return 22
            }
        }
        
        var fontWeight: Font.Weight {
            switch self {
            case .h1:
                return .bold
            case .h2:
                return .semibold
            case .h3:
                return .medium
            }
        }
        
        var underlineHeight: CGFloat {
            switch self {
            case .h1:
                return 8
            case .h2:
                return 4
            case .h3:
                return 2
            }
        }
        
        var underlineWidth: CGFloat {
            switch self {
            case .h1:
                return 72
            case .h2:
                return 60
            case .h3:
                return 50
            }
        }
    }
    
    let title: String
    let style: Style
    let hasUnderline: Bool
    let textColor: DesignSystemColor
    
    public var body: some View {
        VStack(alignment: .leading, spacing: Constants.vStackSpacing){
            Text(title)
                .font(
                    .system(
                        size: style.fontSize,
                        weight: style.fontWeight
                    )
                )
                .foregroundColor(textColor.color)
                .lineLimit(Constants.lineLimit)
            
            if hasUnderline {
                Rectangle()
                    .frame(
                        width: style.underlineWidth,
                        height: style.underlineHeight,
                        alignment: .leading
                    )
                    
            }
        }
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 16) {
        TitleTextView(title: Constants.title1, style: .h1, hasUnderline: true, textColor: .primary)
        TitleTextView(title: Constants.title2, style: .h2, hasUnderline: false, textColor: .secondary)
        TitleTextView(title: Constants.title3, style: .h3, hasUnderline: true, textColor: .accent)
        TitleTextView(title: Constants.title2, style: .h2, hasUnderline: true, textColor: .success)
    }
    .padding()
}

