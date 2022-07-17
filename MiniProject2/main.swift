//
//  main.swift
//  SwiftAGDS
//
//  Created by Yusuke Ishihara on 2022-07-15.
//

import Foundation

// Problem 1 (all solutions)
var board1 = Board(size: 8)
solve8Queens(board: &board1)

// Problem 1 (one solution)
var board2 = Board(size: 8)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 0, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 1, initialCol: 7)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 0)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 2, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 3, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 4, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 5, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 4)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 5)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 6, initialCol: 7)
//
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 0)
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 1)
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 2)
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 3)
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 4)
solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 5) // 22 times for first solution
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 6)
//solve8QueensForOneSolution(board: &board2, initialRow: 7, initialCol: 7)
