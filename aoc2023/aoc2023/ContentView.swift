//
//  ContentView.swift
//  aoc2023
//
//  Created by Mad on 30/12/2023.
//

import SwiftUI

struct ContentView: View {
    var puzzles: [Puzzle]

    var body: some View {
        NavigationView {
            List {
                ForEach(puzzles) { item in
                    PuzzleItem(item: item)
                }
                Text("TotalStars = 0").foregroundColor(.secondary)
            }
            .navigationTitle("Advent of Code 23")
        }
    }
}

#Preview {
    ContentView(puzzles: testData)
}

struct PuzzleItem: View {
    var item: Puzzle
    
    var body: some View {
        NavigationLink(destination: PuzzleDetail(puzzle: item)) {
            HStack{
                Text("\(Int(item.day)/10)").font(.title).monospaced()
                Text("\(Int(item.day)%10)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).monospaced()
                VStack {
                    HStack {
                        Text(item.title).font(.headline)
                        Spacer()
                    }
                    HStack {
                        Text("Part 1: 0").font(.subheadline)
                        Spacer()
                    }
                    HStack {
                        Text("Part 2: 0").font(.subheadline)
                        Spacer()
                    }
                }
                .padding()
            }
        }
    }
}
