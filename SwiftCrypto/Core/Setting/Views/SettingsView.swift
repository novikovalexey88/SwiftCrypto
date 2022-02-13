//
//  SettingsView.swift
//  SwiftCrypto
//
//  Created by 668 on 13.02.2022.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationView {
            List {
                swiftfulSection
             coinGecko
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Setting")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
                
            }
                
            }
        }
    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var swiftfulSection: some View {
        Section(header: Text("SwiftUI")) {
            VStack (alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("This App was made")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on you tube", destination: youtubeURL)
            Link("Support", destination: defaultURL)
        }
    }
    private var coinGecko: some View {
        Section(header: Text("CoinGecko")) {
            VStack (alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("API")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("coingecko", destination: coingeckoURL)
        }
    }
}
