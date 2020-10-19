//
//  ContentView.swift
//  Memorize
//
//  Created by Iuri Jikidze on 10/19/20.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool
    var body: some View{
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10).fill()
            }
            
        }
    }
}

struct ContentView: View {
    var body: some View {
        return HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(.orange )
        .font(Font.largeTitle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
