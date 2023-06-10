//
//  HomeScreenModel.swift
//  TicTacToe
//
//  Created by mac on 10/6/2023.
//

import Foundation
extension HomeScreen {
    class Model: ObservableObject {
        
        @Published var moves: [Move?] = Array(repeating: nil, count: 9)
        @Published var computerMovePosition: Int? = nil
        
        func isSquareOccupied(forIndex index: Int) -> Bool {
            return self.moves.contains(where: { $0?.boardIndex == index })
        }
        
        func determineMoveComputerPosition() -> Int {
            var movePosition = Int.random(in: 0..<9)
            while isSquareOccupied(forIndex: movePosition) {
                movePosition = Int.random(in: 0..<9)
            }
            return movePosition
        }
        
        func computerMove() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                self.computerMovePosition = self.determineMoveComputerPosition()
                if let computerMovePosition = self.computerMovePosition {
                    self.moves[computerMovePosition] = Move(player: .robot, boardIndex: computerMovePosition)
                }
            }
        }
        
        func humanMove(index: Int) {
            if isSquareOccupied(forIndex: index) { return }
            moves[index] =  Move(player: .human, boardIndex: index)
        }
    }
}
