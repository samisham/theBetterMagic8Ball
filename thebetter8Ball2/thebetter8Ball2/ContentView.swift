//
//  ContentView.swift
//  thebetter8Ball2
//
//  Created by Sam Isham on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var prediction = "tap to predict"
    func getPrediction() -> String {
        let choice = Int.random(in: 1...6)
        switch choice{
        case 1:
            return "get to work"
        case 2:
            return "are you sure you want to wear that?"
        case 3:
            return "did you do the laundry "
        case 4:
            return "are you sure you should be eating that?"
        case 5:
            return "learn to love yourself"
        case 6:
            return "go hit the gym"
        default:
            return "mow the lawn"
        }
       
    }
    var body: some View {
        ZStack {
            Image("magic8ball")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(prediction)")
                .background(Color .white.opacity(0.5).cornerRadius(5))
                .padding()
                .font(.system(size: 40))
             
                
        }
        .onTapGesture {
            prediction = getPrediction()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
