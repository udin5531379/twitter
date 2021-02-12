//
//  PlaceHolder.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/12/21.
//

import SwiftUI

struct PlaceHolder: View {
    @Binding var text : String
    var placeholderText : String
    
    init(placeholderText: String, text: Binding<String>) {
        self._text = text
        self.placeholderText = placeholderText
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading){
            if text.isEmpty {
                Text(placeholderText)
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                    .padding(.leading, 5)
                }
            
                TextEditor(text: $text)
                
            }
            
            
        }
    }


