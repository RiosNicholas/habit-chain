//
//  HabitButton.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct HabitButton: View {
    @State var chainNum: Int = 0
    @State var habit: String
    var backgroundColor : Color
    var textColor: Color
    
    
    var body: some View {
        Button(action: {
            chainNum += 1
        }) {
          Text("\(habit) | \(chainNum)")
            .padding()
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
        }
        .shadow(color: Color.black, radius: 4, y: 5)
        .contextMenu {
            Button("Reset chain") {
                chainNum = 0
            }
        }
    }
}

struct HabitButton_Previews: PreviewProvider {
    static var previews: some View {
        HabitButton(habit: "Drink water", backgroundColor: .green, textColor: .white)
    }
}
