//
//  ContentView.swift
//  BreakpointToggle
//
//  Created by ramil on 22.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var isOn = false
    
    var body: some View {
        VStack {
            RandomView()
            
            Text("Random text: \(Int.random(in: 0...100))")
                .font(.largeTitle)
            
            Toggle(isOn: $isOn) {
                Text("Toggle is on \(isOn ? "true" : "false")")
                    .font(.largeTitle)
            }.padding(.all, 10)
            
            Button(action: {
                self.isPresented.toggle()
            }) {
                Text("Show pop up")
                    .font(.largeTitle)
            }
        }.sheet(isPresented: $isPresented) {
            Text("Pop up")
                .font(.largeTitle)
        }
    }
}

struct RandomView: View {
    var body: some View {
        Text("Random text: \(Int.random(in: 1...100))")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
