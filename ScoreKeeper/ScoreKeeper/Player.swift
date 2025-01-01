//
//  Player.swift
//  ScoreKeeper
//  
//  Created by warabico.develop on 2025/01/01
//  
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
