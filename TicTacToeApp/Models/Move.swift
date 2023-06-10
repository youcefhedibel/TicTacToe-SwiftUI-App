//
//  Move.swift
//  TicTacToe
//
//  Created by mac on 10/6/2023.
//

import Foundation

struct Move {
    let player: Player
    let boardIndex: Int
    var indecator: String {
        switch player {
        case .human: return "xmark"
        case .robot: return "circle"
        }
    }
}
