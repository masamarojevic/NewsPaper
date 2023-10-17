//
//  ContentView.swift
//  NewsPaperApp
//
//  Created by Ana Marojevic on 2023-10-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            
            VStack {
                
                Text("Dagens nyheter").bold().font(.title)
                
                CardComponentView()
              .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.25, alignment: .center).background(.black).cornerRadius(9)
                
            }.position(x: geometry.size.width * 0.5,y: geometry.size.height * 0.2)
            
        }
    }
}

struct CardComponentView:View{
    
    var body: some View{
        AsyncImage(url: URL(string: "https://www.svtstatic.se/image/wide/992/41404046/1697528910?format=auto"), content:
                    {image in
            image.resizable().overlay(content: {VStack(content: {Text("Atentat i bryssel").bold().foregroundColor(.white).font(.title)}
            
            )
                
            })
        }, placeholder: {Text("Loading").foregroundColor(.white).bold()})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
