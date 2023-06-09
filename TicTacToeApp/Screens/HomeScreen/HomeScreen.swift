//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by mac on 24/5/2023.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible()),
                           GridItem(.flexible())]

struct HomeScreen: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(0..<9){ index in
                        ZStack {
                            Circle()
                                .fill(Color.pinkPrimary)
                                .frame(width: geometry.size.width/3-20,
                                       height: geometry.size.width/3-20)
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.yellowPrimary)
                        }
                    }
                }
                
                Spacer()
            }
            
        }.background(Color.yellowSecondary)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
