//
//  BoardView.swift
//  TicTacToe
//
//  Created by Nikolas Burk on 05/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

fileprivate let numberOfRows: CGFloat = 3
fileprivate let numberOfColumns: CGFloat = 3

class BoardView: UIView {
  
  convenience init(boardWidth: CGFloat, boardHeight: CGFloat) {
    let fieldWidth = boardWidth / numberOfColumns
    let fieldHeight = boardHeight / numberOfRows
    self.init(fieldWidth: fieldWidth, fieldHeight: fieldHeight)
  }
  
  init(fieldWidth: CGFloat, fieldHeight: CGFloat) {
    
    // initialise the view
    let boardFrame = CGRect(x: 0, y: 0, width: numberOfColumns*fieldWidth, height: numberOfRows*fieldHeight)
    super.init(frame: boardFrame)
    
    // add the fields
    let numberOfFields = Int(numberOfRows*numberOfColumns)
    for i in 0..<numberOfFields {
      
      // calculate x and y positions for the current field
      let xPosition = i % Int(numberOfColumns)
      let x = CGFloat(xPosition) * fieldWidth
      let yPosition = i / Int(numberOfRows)
      let y = CGFloat(yPosition) * fieldHeight
      let currentFieldFrame = CGRect(x: x, y: y, width: fieldWidth, height: fieldHeight)
      let field = FieldView(frame: currentFieldFrame, xPosition: xPosition, yPosition: yPosition)
      field.layer.borderWidth = 1.0

      // add a gesture recognizer to the field
      let tap = UITapGestureRecognizer(target: self, action: #selector(BoardView.handleTap(_:)))
      field.addGestureRecognizer(tap)
      
      // add the field as subview to our board
      self.addSubview(field)
    }
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc private func handleTap(_ tap: UITapGestureRecognizer) {
    let tappedField = tap.view as! FieldView
    print("handle tap at position: (\(tappedField.xPosition), \(tappedField.yPosition))")
  }
  
}
