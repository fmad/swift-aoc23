//
//  Results.swift
//  aoc2023
//
//  Created by Mad on 30/12/2023.
//

import Foundation

class Run: Identifiable {
    var id = UUID()
    var test: Bool
    var inputFile: String
    var extraData: Int64
    var expected: Int64
    var achieved: Int64
    
    init(id: UUID = UUID(), test: Bool, inputFile: String, extraData: Int64, expected: Int64, achieved: Int64) {
        self.id = id
        self.test = test
        self.inputFile = inputFile
        self.extraData = extraData
        self.expected = expected
        self.achieved = achieved
    }
}

class Part: Identifiable {
    var id = UUID()
    var partNr: Int
    var runs: [Run]
    
    init(id: UUID = UUID(), partNr: Int, runs: [Run]) {
        self.id = id
        self.partNr = partNr
        self.runs = runs
    }
}

class Puzzle: Identifiable,ObservableObject {
    var id = UUID()
    var day: Int
    var title: String
    var parts: [Part]
    
    init(id: UUID = UUID(), day: Int, title: String, parts: [Part]) {
        self.id = id
        self.day = day
        self.title = title
        self.parts = parts
    }
}

let testData = [
    Puzzle(day: 1, title: "Trebuchet?!", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t01.1.txt", extraData: 0, expected:   142, achieved: 0),
             Run(test: false, inputFile: "d01.txt",   extraData: 0, expected: 57346, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t01.2.txt", extraData: 0, expected:   281, achieved: 0),
             Run(test: false, inputFile: "d01.txt",   extraData: 0, expected: 57345, achieved: 0)
             ])
        ]),
    Puzzle(day: 2, title: "Cube Conundrum", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t02.txt", extraData: 0, expected: 8, achieved: 0),
             Run(test: false, inputFile: "d02.txt", extraData: 0, expected: 0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t02.txt", extraData: 0, expected: 2286, achieved: 0),
             Run(test: false, inputFile: "d02.txt", extraData: 0, expected:    0, achieved: 0)
             ])
        ]),
    Puzzle(day: 3, title: "Gear Ratios", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t03.txt", extraData: 0, expected: 4361, achieved: 0),
             Run(test: false, inputFile: "d03.txt", extraData: 0, expected:    0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t03.txt", extraData: 0, expected: 467835, achieved: 0),
             Run(test: false, inputFile: "d03.txt", extraData: 0, expected:      0, achieved: 0)
             ])
        ]),
    Puzzle(day: 4, title: "Scratchcards", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t04.txt", extraData: 0, expected: 13, achieved: 0),
             Run(test: false, inputFile: "d04.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t04.txt", extraData: 0, expected: 30, achieved: 0),
             Run(test: false, inputFile: "d04.txt", extraData: 0, expected:  0, achieved: 0)
             ])
        ]),
    Puzzle(day: 5, title: "If You Give A Seed A Fertilizer", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t05.txt", extraData: 0, expected: 35, achieved: 0),
             Run(test: false, inputFile: "d05.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t05.txt", extraData: 0, expected: 46, achieved: 0),
             Run(test: false, inputFile: "d05.txt", extraData: 0, expected:  0, achieved: 0)
             ])
        ]),
    Puzzle(day: 6, title: "Wait For It", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t06.txt", extraData: 0, expected: 288, achieved: 0),
             Run(test: false, inputFile: "d06.txt", extraData: 0, expected:   0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t06.txt", extraData: 0, expected: 71503, achieved: 0),
             Run(test: false, inputFile: "d06.txt", extraData: 0, expected:     0, achieved: 0)
             ])
        ]),
    Puzzle(day: 7, title: "Camel Cards", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t07.txt", extraData: 0, expected: 6440, achieved: 0),
             Run(test: false, inputFile: "d07.txt", extraData: 0, expected:    0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t07.txt", extraData: 0, expected: 5905, achieved: 0),
             Run(test: false, inputFile: "d07.txt", extraData: 0, expected:    0, achieved: 0)
             ])
        ]),
    Puzzle(day: 8, title: "Haunted Wasteland", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t08.1.txt", extraData: 0, expected: 6, achieved: 0),
             Run(test: false, inputFile: "d08.txt",   extraData: 0, expected: 0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t08.2.txt", extraData: 0, expected: 6, achieved: 0),
             Run(test: false, inputFile: "d08.txt",   extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 9, title: "Mirage Maintenance", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t09.txt", extraData: 0, expected: 114, achieved: 0),
             Run(test: false, inputFile: "d09.txt", extraData: 0, expected:   0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t09.txt", extraData: 0, expected: 2, achieved: 0),
             Run(test: false, inputFile: "d09.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 10, title: "Pipe Maze", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t10.1.txt", extraData: 0, expected:  4, achieved: 0),
             Run(test: false, inputFile: "d10.txt",   extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t10.2.txt", extraData: 0, expected: 10, achieved: 0),
             Run(test: false, inputFile: "d10.txt",   extraData: 0, expected:  0, achieved: 0)
             ])
        ]),
    Puzzle(day: 11, title: "Cosmic Expansion", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t11.txt", extraData: 0, expected:  374, achieved: 0),
             Run(test: false, inputFile: "d11.txt", extraData: 0, expected:    0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t11.txt", extraData: 0, expected: 8410, achieved: 0),
             Run(test: false, inputFile: "d11.txt", extraData: 0, expected:    0, achieved: 0)
             ])
        ]),
    Puzzle(day: 12, title: "Hot Springs", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t12.txt", extraData: 0, expected: 21, achieved: 0),
             Run(test: false, inputFile: "d12.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t12.txt", extraData: 0, expected: 525152, achieved: 0),
             Run(test: false, inputFile: "d12.txt", extraData: 0, expected:      0, achieved: 0)
             ])
        ]),
    Puzzle(day: 13, title: "Point of Incidence", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t13.txt", extraData: 0, expected: 405, achieved: 0),
             Run(test: false, inputFile: "d13.txt", extraData: 0, expected:   0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t13.txt", extraData: 0, expected: 400, achieved: 0),
             Run(test: false, inputFile: "d13.txt", extraData: 0, expected:   0, achieved: 0)
             ])
        ]),
    Puzzle(day: 14, title: "Parabolic Reflector Dish", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t14.txt", extraData: 0, expected: 136, achieved: 0),
             Run(test: false, inputFile: "d14.txt", extraData: 0, expected:   0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t14.txt", extraData: 0, expected: 64, achieved: 0),
             Run(test: false, inputFile: "d14.txt", extraData: 0, expected:  0, achieved: 0)
             ])
        ]),
    Puzzle(day: 15, title: "Lens Library", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t15.txt", extraData: 0, expected: 1320, achieved: 0),
             Run(test: false, inputFile: "d15.txt", extraData: 0, expected:    0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t15.txt", extraData: 0, expected: 145, achieved: 0),
             Run(test: false, inputFile: "d15.txt", extraData: 0, expected:   0, achieved: 0)
             ])
        ]),
    Puzzle(day: 16, title: "The Floor Will Be Lava", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t16.txt", extraData: 0, expected: 46, achieved: 0),
             Run(test: false, inputFile: "d16.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t16.txt", extraData: 0, expected: 51, achieved: 0),
             Run(test: false, inputFile: "d16.txt", extraData: 0, expected:  0, achieved: 0)
             ])
        ]),
    Puzzle(day: 17, title: "Clumsy Crucible", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t17.txt", extraData: 0, expected: 102, achieved: 0),
             Run(test: false, inputFile: "d17.txt", extraData: 0, expected:   0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t17.txt", extraData: 0, expected: 0, achieved: 0),
             Run(test: false, inputFile: "d17.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 18, title: "Lavaduct Lagoon", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t18.txt", extraData: 0, expected: 62, achieved: 0),
             Run(test: false, inputFile: "d18.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t18.txt", extraData: 0, expected: 952408144115, achieved: 0),
             Run(test: false, inputFile: "d18.txt", extraData: 0, expected:            0, achieved: 0)
             ])
        ]),
    Puzzle(day: 19, title: "Aplenty", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t19.txt", extraData: 0, expected: 19114, achieved: 0),
             Run(test: false, inputFile: "d19.txt", extraData: 0, expected:     0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t19.txt", extraData: 0, expected: 167409079868000, achieved: 0),
             Run(test: false, inputFile: "d19.txt", extraData: 0, expected:               0, achieved: 0)
             ])
        ]),
    Puzzle(day: 20, title: "Pulse Propagation", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t20.1a.txt", extraData: 0, expected: 32000000, achieved: 0),
             Run(test: true,  inputFile: "t20.1b.txt", extraData: 0, expected: 11687500, achieved: 0),
             Run(test: false, inputFile: "d20.txt",    extraData: 0, expected:        0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: false, inputFile: "d20.txt",    extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 21, title: "Step Counter", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t21.txt", extraData: 6, expected: 16, achieved: 0),
             Run(test: false, inputFile: "d21.txt", extraData: 0, expected: 0,  achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t21.txt", extraData:    6, expected:       16, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData:   10, expected:       50, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData:   50, expected:     1594, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData:  100, expected:     6536, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData:  500, expected:   167004, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData: 1000, expected:   668697, achieved: 0),
             Run(test: true,  inputFile: "t21.txt", extraData: 5000, expected: 16733044, achieved: 0),
             Run(test: false, inputFile: "d21.txt", extraData:    0, expected:        0, achieved: 0)
             ])
        ]),
    Puzzle(day: 22, title: "Sand Slabs", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t22.txt", extraData: 0, expected: 5, achieved: 0),
             Run(test: false, inputFile: "d22.txt", extraData: 0, expected: 0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t22.txt", extraData: 0, expected: 0, achieved: 0),
             Run(test: false, inputFile: "d22.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 23, title: "A Long Walk", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t23.txt", extraData: 0, expected: 94, achieved: 0),
             Run(test: false, inputFile: "d23.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t23.txt", extraData: 0, expected: 0, achieved: 0),
             Run(test: false, inputFile: "d23.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 24, title: "Never Tell Me The Odds", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t24.txt", extraData: 0, expected: 2, achieved: 0),
             Run(test: false, inputFile: "d24.txt", extraData: 0, expected: 0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t24.txt", extraData: 0, expected: 0, achieved: 0),
             Run(test: false, inputFile: "d24.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ]),
    Puzzle(day: 25, title: "Snowverload", parts: [
        Part(partNr:1,
             runs: [
             Run(test: true,  inputFile: "t25.txt", extraData: 0, expected: 54, achieved: 0),
             Run(test: false, inputFile: "d25.txt", extraData: 0, expected:  0, achieved: 0)
             ]),
        Part(partNr:2,
             runs: [
             Run(test: true,  inputFile: "t25.txt", extraData: 0, expected: 0, achieved: 0),
             Run(test: false, inputFile: "d25.txt", extraData: 0, expected: 0, achieved: 0)
             ])
        ])
]
