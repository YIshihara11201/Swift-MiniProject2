//
//  QueensSolver.swift
//  SwiftAGDS
//
//  Created by Derrick Park on 2019-03-13.
//  Copyright © 2019 Derrick Park. All rights reserved.
//
import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.

// note: you can't put multiple Q's in one row.

var count = 0
var countForFirstSolution = 0
var validBoardNumber = 0

func solve8Queens(board: inout Board) {
    var uniqueArrangementSet = Set<String>()
    var availableColumn = [Int]()
    for col in 0..<board.size {
        availableColumn.append(col)
    }
    
    solve8QueensHelper(board: &board, row: 0, uniqueArrnagement: &uniqueArrangementSet)
    
    print("recursive calls: \(count) times", terminator: "\n\n")
    print("recursive calls for first solution: \(countForFirstSolution)", terminator: "\n\n")
    print("Possible arrangements: \(validBoardNumber)", terminator: "\n\n")
    count = 0
    countForFirstSolution = 0
    validBoardNumber = 0
}

func solve8QueensHelper(board: inout Board, row: Int, uniqueArrnagement: inout Set<String>) {
    count += 1
    
    // base case
    if row == board.size {
        if !uniqueArrnagement.contains(board.description) {
            if validBoardNumber == 0 {
                countForFirstSolution = count
            }
            validBoardNumber += 1
            uniqueArrnagement.insert(board.description)
            print(board)
        }
        return
    }
    
    // choice & search
    for col in 0 ..< board.size {
        if board.isSafe(row: row, col: col) {
            board.place(row: row, col: col)
            solve8QueensHelper(board: &board, row: row+1, uniqueArrnagement: &uniqueArrnagement)
            board.remove(row: row, col: col)
        }
    }
}
