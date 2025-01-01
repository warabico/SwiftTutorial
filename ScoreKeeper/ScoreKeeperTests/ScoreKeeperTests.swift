//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//  
//  Created by warabico.develop on 2025/01/01
//  
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre", score: 3),
        ])
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        var scoreboard = Scoreboard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Taro", score: 0),
                Player(name: "Jiro", score: 1),
                Player(name: "Saburo", score: 4),
                Player(name: "Andre", score: 4),
            ],
            state: .playing,
            doesHighestScoreWin: true
        )
        let winners0 = scoreboard.winners
        #expect( winners0 == [] )

        scoreboard.state = .gameOver
        let winners1 = scoreboard.winners
        #expect( winners1 == [Player(name: "Saburo", score: 4), Player(name: "Andre", score: 4)] )
    }
    
    @Test("Lowest score wins")
    func lowestScoreWins() {
        var scoreboard = Scoreboard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Taro", score: 0),
                Player(name: "Jiro", score: 1),
                Player(name: "Saburo", score: 4),
                Player(name: "Andre", score: 4),
            ],
            state: .playing,
            doesHighestScoreWin: false
        )
        let winners0 = scoreboard.winners
        #expect( winners0 == [] )
        
        scoreboard.state = .gameOver
        let winners1 = scoreboard.winners
        #expect( winners1 == [Player(name: "Elisha", score: 0), Player(name: "Taro", score: 0),] )
    }

}
