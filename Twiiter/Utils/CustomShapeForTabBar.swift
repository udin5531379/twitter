//
//  CustomShapeForTabBar.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/17/21.
//

import Foundation
import SwiftUI

struct CustomShapeForTabBar: Shape {
    
    var xAxis: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0)) //origin, path kata bata suru huncha bhaneyko
            path.addLine(to: CGPoint(x: rect.width, y: 0)) // -->(rect ko width samma , 0)
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))

            let center = xAxis

            path.move(to: CGPoint(x: center - 50 , y: 0))

            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)

            let to2 = CGPoint(x: center + 50, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)

            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
            
//            path.move(to: CGPoint(x: 0, y: 70)) //origin, path kata bata suru huncha bhaneyko
//            path.addLine(to: CGPoint(x: 0, y: rect.height)) // -->(rect ko width samma , 0)
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            path.addLine(to: CGPoint(x: rect.width, y: 70))
//
//            let midX = rect.width / 2
//            let width = rect.width
//
//
//
//            let controlWidth = midX - 100
//            path.move(to: CGPoint(x: 0, y: 70))
//
//            let to1 = CGPoint(x: midX, y: -55)
//            let control1 = CGPoint(x: controlWidth, y: 70)
//            let control2 = CGPoint(x: controlWidth, y: -55)
//
//            let to2 = CGPoint(x: width, y: 70)
//            let control3 = CGPoint(x: width - controlWidth, y: -55)
//            let control4 = CGPoint(x: width - controlWidth, y: 70)
//
//            path.addCurve(to: to1, control1: control1, control2: control2)
//            path.addCurve(to: to2, control1: control3, control2: control4)
//
        }
        
    }
 }


