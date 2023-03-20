//
//  ContentView.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("habit-chain-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("chain-cartoon")
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 50.0)
            
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
            }
            .padding()
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
            }
            .padding()
            
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
                HabitButton(habit: "Drink Water", backgroundColor: .green, textColor: .white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
