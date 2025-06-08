//
//  TextFieldView.swift
//  InfolioDesignSystem
//
//  Created by Volnei Foss on 07/06/25.
//

import SwiftUI

@available(iOS 15.0, *)
struct TextFieldView: View {
    
    enum Style {
        case none
        case outlined
        
        var borderColor: Color {
            switch self {
            case .none:
                return .clear
            case .outlined:
                return .gray.opacity(0.2)
            }
        }
        
        var backgroundColor: Color {
            switch self {
            case .none:
                return .clear
            case .outlined:
                return .gray.opacity(0.1)
            }
        }
    }
    
    @ObservedObject var viewModel: TextFieldViewModel
    var style: Style = .none
    
    var body: some View {
        HStack {
            if !viewModel.searchActive {
                searchButton
            } else {
                searchInput
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(16)
    }
    
    var searchButton: some View {
        Button(action: {self.viewModel.searchActive = true }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .font(.system(size: 24))
        }
    }
    
    var searchInput: some View {
        HStack {
            TextField(self.viewModel.label, text: $viewModel.searchText)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(style.backgroundColor)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(style.borderColor, lineWidth: 1)
                }
                .overlay {
                    if !self.viewModel.searchText.isEmpty {
                        clearText
                    }
                }
            
            closeSearchButton

        }
    }
    
    private var closeSearchButton: some View {
        Button(action: {
            self.viewModel.searchActive = false
        }) {
            Text("Cancel")
        }
        .buttonStyle(.plain)

    }
    
    private var clearText: some View {
        Button(action: {
            viewModel.searchText = ""
        }) {
            Image(systemName: "xmark.circle.fill")
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 32)
        }
    }
}

#Preview {
    TextFieldView(viewModel: TextFieldViewModel(label: "Search ..."), style: .outlined)
}
