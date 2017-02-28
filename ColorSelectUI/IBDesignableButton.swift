//
//  IBDesignableButton.swift
//  ColorSelectUI
//
//  Created by SoichiFurukawa on 2017/02/24.
//  Copyright © 2017年 FurukawaSoichi. All rights reserved.

import UIKit

@IBDesignable

class PolygonButton: UIButton {
    
    @IBInspectable public var numberOfCorner : Int = 4
    @IBInspectable public var buttonColor : UIColor = UIColor.black
    @IBInspectable public var rotation : Double = 0

    public let borderShape = CAShapeLayer()

    // Attributes Inspectorで設定した値を反映
    override func draw(_ rect: CGRect) {
        drawPolygon(numberOfCorner: numberOfCorner)
    }
    
    private func drawPolygon(numberOfCorner: Int) {
        let path = createPolygonPath(numberOfCorner: numberOfCorner)
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        self.layer.masksToBounds = true
        self.layer.mask = mask
        
        //ボーダー
        borderShape.path = path.cgPath
        borderShape.lineWidth = 1.0
        borderShape.strokeColor = buttonColor.cgColor
        borderShape.fillColor = buttonColor.cgColor
        self.layer.insertSublayer(borderShape, at: 0)
    }
    
    private func createPolygonPath(numberOfCorner:Int) -> UIBezierPath {
        let path = UIBezierPath()
        
        let center_x = self.center.x - self.frame.origin.x
        let center_y = self.center.y - self.frame.origin.y
        
        let rot = rotation * M_PI / 180
        
        for i in 0..<numberOfCorner {
            let rad = rot + M_PI * Double(i) * 2.0 / Double(numberOfCorner) - M_PI_2
            let drawPoint:CGPoint =
                CGPoint(x: center_x + self.frame.width/2 * CGFloat(cos(rad)) ,
                        y: center_y - self.frame.height/2 * CGFloat(sin(rad)) )
            if i==0 {
                path.move(to: drawPoint)
            } else {
                path.addLine(to: drawPoint)
            }
        }
        path.close()
        return path
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if !createPolygonPath(numberOfCorner:numberOfCorner).contains(point) {
            // タッチ領域外
            return nil
        } else {
            print("タッチ")
            return super.hitTest(point, with: event)
        }
    }
    
}
