//
//  ContentView.swift
//  Clavax
//
//  Created by Ayushi Bhatnagar on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var anyText: String = ""
    
    var body: some View {
        VStack{
            TextField("Enter Text", text: $anyText).font(Font.system(size: 25)).padding(EdgeInsets(top: 20, leading: 8, bottom: 3, trailing: 8)).background(Color.white).foregroundColor(.green).padding(.top, 500)
        }.frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height).background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
