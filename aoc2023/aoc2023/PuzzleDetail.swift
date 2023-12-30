//
//  PuzzleDetail.swift
//  aoc2023
//
//  Created by Mad on 30/12/2023.
//

import SwiftUI

struct PuzzleDetail: View {
    let puzzle: Puzzle
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(puzzle.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Day \(puzzle.day)")
                Spacer()
            }
            List {
                ForEach(puzzle.parts) { part in
                    PuzzlePart(part: part)
                }
            }
            Spacer()
        }
    }
}

struct PuzzlePart: View {
    let part: Part
    
    var body: some View {
        VStack {
            HStack {
                Text("Part \(part.partNr)")
                Spacer()
            }
            List {
                ForEach(part.runs) { run in
                    VStack {
                        Text("Expected: \(run.expected)")
                        Text("Achieved: \(run.achieved)")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        PuzzleDetail(puzzle: testData[20])
    }
}
