//
//  BezierPathsView.swift
//  Dropit
//
//  Created by Dana Gregg on 11/29/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

   private var bezierPaths = [String:UIBezierPath]()
    
    func setPath (path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
