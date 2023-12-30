//
//  ResultsStore.swift
//  aoc2023
//
//  Created by Mad on 30/12/2023.
//

import Foundation

class PuzzleStore: ObservableObject {
    @Published var puzzles: [Puzzle]
    
    init(puzzles: [Puzzle] = []) {
        self.puzzles = puzzles
    }
}

let testStore = PuzzleStore(puzzles: testData)
