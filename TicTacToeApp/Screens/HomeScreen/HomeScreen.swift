//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by mac on 24/5/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @StateObject private var model = Model()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(0..<9){ index in
                        Button {
                            if model.isSquareOccupied(forIndex: index) { return }
                            model.moves[index] =  Move(player: .human, boardIndex: index)
                            model.computerMove()
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .fill(Color.pinkPrimary.opacity(0.8))
                                    .frame(width: geometry.size.width/3-30,
                                           height: geometry.size.width/3-30)
                                Image(systemName: model.moves[index]?.indecator ?? "")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.yellowPrimary)
                            }
                        }

                }
                    
                }
                
                Spacer()
            }.padding(.horizontal, 16)
            
        }.background(Color.yellowSecondary)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
