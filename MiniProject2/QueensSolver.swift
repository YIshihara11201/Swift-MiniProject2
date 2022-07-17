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

var count = 0
var validBoardNumber = 0

func solve8Queens(board: inout Board) {
    var uniqueArrangementSet = Set<String>()
    
    // shift the first Q's place from upper left to lower right position
    for i in 0..<board.size {
        for j in 0..<board.size {
            board.place(row: i, col: j)
            solve8QueensHelper(board: &board, row: i, col: j, uniqueArrnagement: &uniqueArrangementSet)
            board.remove(row: i, col: j)
        }
    }
    
    print("Number of recursive calls: \(count)")
    print("Possible arrangements: \(validBoardNumber)", terminator: "\n\n")
    count = 0
    validBoardNumber = 0
    
}

func solve8QueensForOneSolution(board: inout Board, initialRow: Int, initialCol: Int) {
    var uniqueArrangementSet = Set<String>()
    
    board.place(row: initialRow, col: initialCol)
    solve8QueensForOneSolutionHelper(board: &board, row: initialRow, col: initialCol, uniqueArrnagement: &uniqueArrangementSet)
    board.remove(row: initialRow, col: initialCol)
    
    print("Number of recursive calls: \(count)", terminator: "\n\n")
    count = 0
    
}

func solve8QueensHelper(board: inout Board, row: Int, col: Int, uniqueArrnagement: inout Set<String>) {
    count += 1
    
    // base case
    if board.getNumberOfQueen() == board.size {
        if !uniqueArrnagement.contains(board.description) {
            validBoardNumber += 1
            uniqueArrnagement.insert(board.description)
            print(board)
        }
        return
    }
    
    // choice&search
    // note:
    // possible positions for "Q" to take are at (x, y) = (x+i, x+j)
    // when (x,y) is the coordinate where latest Q was put
    // with the following restriction ----> i>=1 && j>=i+1
    
    //upper right
    for i in stride(from: 1, through: row, by: 1) {
        for j in stride(from: i+1, to: board.size-col, by: 1) {
            if board.isSafe(row: row-i, col: col+j) {
                board.place(row: row-i, col: col+j)
                solve8QueensHelper(board: &board, row: row-i, col: col+j, uniqueArrnagement: &uniqueArrnagement)
                board.remove(row: row-i, col: col+j)
            }
        }
    }
    
    //upper left
    for i in stride(from: 1, through: row, by: 1) {
        for j in stride(from: i+1, through: col, by: 1) {
            if board.isSafe(row: row-i, col: col-j) {
                board.place(row: row-i, col: col-j)
                solve8QueensHelper(board: &board, row: row-i, col: col-j, uniqueArrnagement: &uniqueArrnagement)
                board.remove(row: row-i, col: col-j)
            }
        }
    }
    
    //lower right
    for i in stride(from: 1, to: board.size-row, by: 1) {
        for j in stride(from: i+1, to: board.size-col, by: 1) {
            if board.isSafe(row: row+i, col: col+j) {
                board.place(row: row+i, col: col+j)
                solve8QueensHelper(board: &board, row: row+i, col: col+j, uniqueArrnagement: &uniqueArrnagement)
                board.remove(row: row+i, col: col+j)
            }
        }
    }
    
    //lower left
    for i in stride(from: 1, to: board.size-row, by: 1) {
        for j in stride(from: i+1, through: col, by: 1) {
            if board.isSafe(row: row+i, col: col-j) {
                board.place(row: row+i, col: col-j)
                solve8QueensHelper(board: &board, row: row+i, col: col-j, uniqueArrnagement: &uniqueArrnagement)
                board.remove(row: row+i, col: col-j)
            }
        }
    }
}

func solve8QueensForOneSolutionHelper(board: inout Board, row: Int, col: Int, uniqueArrnagement: inout Set<String>) {
    count += 1
    
    if board.getNumberOfQueen() == board.size {
        if !uniqueArrnagement.contains(board.description) {
            validBoardNumber += 1
            uniqueArrnagement.insert(board.description)
            print(board)
        }
        return
    }
    
    //upper left
    if uniqueArrnagement.count == 0 {
        for i in stride(from: 1, through: row, by: 1) {
            for j in stride(from: i+1, through: col, by: 1) {
                if board.isSafe(row: row-i, col: col-j) {
                    board.place(row: row-i, col: col-j)
                    solve8QueensForOneSolutionHelper(board: &board, row: row-i, col: col-j, uniqueArrnagement: &uniqueArrnagement)
                    board.remove(row: row-i, col: col-j)
                }
            }
        }
    }
    
    //lower right
    if uniqueArrnagement.count == 0 {
        for i in stride(from: 1, to: board.size-row, by: 1) {
            for j in stride(from: i+1, to: board.size-col, by: 1) {
                if board.isSafe(row: row+i, col: col+j) {
                    board.place(row: row+i, col: col+j)
                    solve8QueensForOneSolutionHelper(board: &board, row: row+i, col: col+j, uniqueArrnagement: &uniqueArrnagement)
                    board.remove(row: row+i, col: col+j)
                }
            }
        }
    }
    
    //lower left
    if uniqueArrnagement.count == 0 {
        for i in stride(from: 1, to: board.size-row, by: 1) {
            for j in stride(from: i+1, through: col, by: 1) {
                if board.isSafe(row: row+i, col: col-j) {
                    board.place(row: row+i, col: col-j)
                    solve8QueensForOneSolutionHelper(board: &board, row: row+i, col: col-j, uniqueArrnagement: &uniqueArrnagement)
                    board.remove(row: row+i, col: col-j)
                }
            }
        }
    }
}
