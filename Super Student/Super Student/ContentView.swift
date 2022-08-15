//
//  ContentView.swift
//  Super Student
//
//  Created by Max will on 8/15/22.
//

import SwiftUI

struct ContentView: View {
    var pic = ["rock", "paper", "scissor"]
@State var img1 = "rock"
@State var img2 = "rock"
@State var points1 = 0
@State var points2 = 0
@State var draw = 0
    @State var msg = ""

    @State private var showAlert = false
var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack{
                Text("Player 1")
                    
                Text("points: \(points1)")
                Image("\(img1)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Image("\(img2)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        img1 = (pic.randomElement() ?? "rock")
                        img2 = (pic.randomElement() ?? "rock")
                        if img1 == "rock" && img2 == "scissor" {
                            points1 += 1
                        } else if img1 == "paper" && img2 == "rock" {
                            points1 += 1
                        } else if img1 == "scissor" && img2 == "paper"{
                            points1 += 1
                        } else if img1 == "rock" && img2  == "rock" {
                            draw += 1
                        } else if img1 == "paper" && img2  == "paper" {
                            draw += 1
                        } else if img1 == "scissor" && img2  == "scissor" {
                            draw += 1
                        } else {
                            points2 += 1
                        }
                        if points1 == 3 {
                            showAlert = true
                            } else if points2 == 3 {
                                showAlert = true
                                }
                    }
                Text("Player 2")
                Text("points: \(points2)")
        }
                    }
        .alert(isPresented: $showAlert){
            Alert(title: Text("Congratulations! 🥳"), message: Text("Player 1"), dismissButton: .default(Text("Ok!")))
                                
                    }
                
                
                
            
        
            }
   
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




