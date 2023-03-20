//
//  ContentView.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("habit-chain-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
