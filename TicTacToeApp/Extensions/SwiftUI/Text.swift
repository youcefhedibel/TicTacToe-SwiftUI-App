//
//  Text.swift
//  TicTacToe
//
//  Created by mac on 9/6/2023.
//

import Foundation
import SwiftUI

extension Text {
    
    func font(_ color: Color, _ ticTacToeFont: Font.TicTacToeFonts, _ size: CGFloat ) -> Text {
        switch ticTacToeFont {
        case .regular:
            return self
                .font(.custom(Font.TicTacToeFonts.regular.rawValue, size: size))
                .foregroundColor(color)
        case .medium:
            return self
                .font(.custom(Font.TicTacToeFonts.medium.rawValue, size: size))
                .foregroundColor(color)
        case .semiBold:
            return self
                .font(.custom(Font.TicTacToeFonts.semiBold.rawValue, size: size))
                .foregroundColor(color)
        case .bold:
            return self
                .font(.custom(Font.TicTacToeFonts.bold.rawValue, size: size))
                .foregroundColor(color)
      
                
        }
    }
    
}
