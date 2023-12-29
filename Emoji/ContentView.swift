//
//  ContentView.swift
//  Emoji
//
//  Created by Lalu Iman Abdullah on 29/12/23.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 😀, 🤓, 🤣, 🥳, 😰, 🤩, 😱, 😇, 🙂,
         😉, 🥰, 🥸, 😫, 🥺, 😡, 😭, 😚, 😋,
         🤪, 😎, 😁, 😶‍🌫️, 🤨, 🧐, 🤬, 🤭, 🫣,
         🤥, 🤗, 🤯, 🤔, 🫨, 🫡, 🤫, 😥, 🫠
}


struct ContentView: View {
    
    @State var selection: Emoji = .😉
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 350, height: 250)
                        .shadow(radius: 20)
                        
                    Text(selection.rawValue)
                        .font(.system(size: 150))
                }
                .padding()
                Text("Spin the Wheel to see Emoji!")
                    .fontWeight(.semibold)
                Picker("Spin Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self){ emoji in
                        Text(emoji.rawValue)
                            .font(.system(size: 30))
                    }
                }
                .pickerStyle(.wheel)
                .padding()
            }
            .navigationTitle("Emoji Wheel")
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
