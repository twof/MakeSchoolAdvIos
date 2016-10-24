//
//  ViewController.swift
//  TicTacToe
//
//  Created by Nikolas Burk on 04/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var board = Board() // model
  weak var boardView: BoardView! = nil // view

  @IBOutlet var currentTurnLabel: UILabel!
  
  // MARK: View controller lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // create board view and add it as a subview
    let margin = 20
    let boardLength = view.bounds.width - CGFloat(2*margin)
    let boardView = BoardView(boardWidth: boardLength, boardHeight: boardLength)
    boardView.center = view.center
    view.addSubview(boardView)
    self.boardView = boardView
    
    // update UI for initial turn
    updateUIForNextTurn()
  }

  
  // MARK: Game logic

  func movePlayer(x: Int, y: Int) {
    let playerWithCurrentTurn = board.playerWithCurrentTurn()
    board.move(player: playerWithCurrentTurn, x: x, y: y)
  }
  
  
  // MARK: Update UI
  
  func updateUIForNextTurn() {
    let playerWithCurrentTurn = board.playerWithCurrentTurn()
    currentTurnLabel.text = board.name(for: playerWithCurrentTurn)
  }
}

