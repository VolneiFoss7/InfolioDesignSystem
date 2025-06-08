//
//  TextFieldViewModel.swift
//  InfolioDesignSystem
//
//  Created by Volnei Foss on 08/06/25.
//

final class TextFieldViewModel: ObservableObject {
    
    @Published var label: String
    @Published var searchText: String = ""
    @Published var searchActive: Bool = false
    
    init(label: String) {
        self.label = label
    }
    
    
    
}
