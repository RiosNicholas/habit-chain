//
//  ContentView.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15){
            Image("habit-chain-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("chain-cartoon")
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20.0)
        
            // HStacks hold two columns of buttons 
            
             HStack(spacing: 0){
                HabitButton(habit: "Late Bedtime", emoji: "😴", goodHabit: false, textColor: .black, gradientColor: [.red, .white])
                
                HabitButton(habit: "Sugary Foods", emoji: "🍩", goodHabit: false, textColor: .black, gradientColor: [.red, .white])
                //HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
            }
            
            
            HStack(spacing: 0){
                HabitButton(habit: "Reading", emoji: "📖", goodHabit: true, textColor: .white, gradientColor: [.green, .white])
                HabitButton(habit: "Journaling", emoji: "📝", goodHabit: false, textColor: .white, gradientColor: [.green, .white])
            }
            
            
            HStack(spacing: 0){
                HabitButton(habit: "Stretching", emoji: "🙆‍♂️", goodHabit: true, textColor: .white, gradientColor: [.green, .white])
                HabitButton(habit: "Exercise", emoji: "🏋️", goodHabit: true, textColor: .white, gradientColor: [.green, .white])
            }
            /*
            
             //I give up on this for now, but I would have wanted to use a datamodel to input my data
             List {
                ForEach(DataModel.habits, id: \.self) { habitData in
                    HabitButton(habit: habitData.habit, emoji: habitData.emoji, goodHabit: habitData.goodHabit, textColor: habitData.textColor, gradientColor: habitData.gradientColor)
                }
            }
             */
            Spacer() // Removes white space and pushes content to fill the entire screen
        }
        .background(Color(.systemGray2).edgesIgnoringSafeArea(.all)) // Setting the app's background
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
