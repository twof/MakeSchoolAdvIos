//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let myFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let myView = UIView(frame: myFrame)

myView.backgroundColor = .red

let mySubview = UIView(frame: CGRect(x: 20, y: 30, width: 50, height: 50))
mySubview.backgroundColor = .green
mySubview.center = myView.center

myView.addSubview(mySubview)

let diagParentView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
diagParentView.backgroundColor = .red

var diagSubViews = [UIView]()
var origin = CGPoint(x: 0, y: 0)



for i in 0...2 {
    diagSubViews.append(UIView(frame: CGRect(x: origin.x, y: origin.y, width: 33, height: 33)))
    diagSubViews[i].backgroundColor = .green
    diagParentView.addSubview(diagSubViews[i])
    origin.x += 33
    origin.y += 33
}

diagParentView

let rowWithBordersView = UIView(frame: CGRect(x: 0, y: 0, width: 75, height: 25))
rowWithBordersView.backgroundColor = .red


var rowSubviews = [UIView]()
var rowSubviewsOrigin = CGPoint(x: 0, y: 0)



for i in 0...2 {
    rowSubviews.append(UIView(frame: CGRect(x: rowSubviewsOrigin.x, y: rowSubviewsOrigin.y, width: 25, height: 25)))
    rowSubviews[i].layer.borderWidth = 1
    rowWithBordersView.addSubview(rowSubviews[i])
    rowSubviewsOrigin.x += 25
}

rowWithBordersView

let gridParentView = UIView(frame: CGRect(x: 0, y: 0, width: 75, height: 75))
gridParentView.backgroundColor = .red

var gridSubviewsOrigin = CGPoint(x: 0, y: 0)

for i in 0...2 {
    for n in 0...2{
        var newSubview = UIView(frame: CGRect(x: gridSubviewsOrigin.x, y: gridSubviewsOrigin.y, width: 25, height: 25))
        newSubview.layer.borderWidth = 1
        gridParentView.addSubview(newSubview)
        gridSubviewsOrigin.x += 25
    }
    gridSubviewsOrigin.y += 25
    gridSubviewsOrigin.x = 0
}

gridParentView
