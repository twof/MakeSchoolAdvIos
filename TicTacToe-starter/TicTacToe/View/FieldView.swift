//
//  FieldView.swift
//  TicTacToe
//
//  Created by Nikolas Burk on 05/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FieldView: UIView {
  
  let xPosition: Int // range: [0, 1, 2]
  let yPosition: Int // range: [0, 1, 2]
  
  init(frame: CGRect, xPosition: Int, yPosition: Int) {
    assert(xPosition >= 0 && xPosition <= 2, "value '\(xPosition)' is not allowed for x position of field")
    assert(yPosition >= 0 && yPosition <= 2, "value '\(yPosition)' is not allowed for y position of field")
    self.xPosition = xPosition
    self.yPosition = yPosition
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

