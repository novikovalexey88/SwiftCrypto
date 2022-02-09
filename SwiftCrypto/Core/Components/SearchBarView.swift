//
//  SearchBarView.swift
//  SwiftCrypto
//
//  Created by 668 on 27.01.2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var serchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    serchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
        TextField("Search by name or symbol", text: $serchText)
            .foregroundColor(Color.theme.accent)
            .disableAutocorrection(true)
            .overlay(Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(serchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            serchText = ""
                        }
                     
                     ,alignment: .trailing
            )
        }
        .font(.headline)
        .padding()
        .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.theme.background)
                    .shadow(color: Color.theme.accent.opacity(0.15), radius: 10, x: 0.0, y: 0.0)
            
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView(serchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            SearchBarView(serchText: .constant(""))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)        }
        
            
    }
}
