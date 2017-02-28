//
//  ViewController.swift
//  ColorSelectUI
//
//  Created by SoichiFurukawa on 2017/02/24.
//  Copyright © 2017年 FurukawaSoichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var circleWidth : CGFloat = 100
//    let ovalShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        ovalShapeLayer.fillColor = UIColor.blue.cgColor  // 図形の中の色は白色
//        ovalShapeLayer.lineWidth = 1.0  // 輪郭の線の太さは1.0pt
//        // 図形は円形
//        ovalShapeLayer.path = UIBezierPath(ovalIn: CGRect(x: view.bounds.size.width*4/5, y: view.bounds.size.height/7, width: circleWidth, height: circleWidth)).cgPath
//        
//        // 作成したCALayerを画面に追加
//        view.layer.addSublayer(ovalShapeLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func colorChange(_ sender: Any) {
        
    }
    
//    @IBAction func slider(_ sender: UISlider) {
//        self.circleWidth = CGFloat(sender.value) * CGFloat(100)
//        ovalShapeLayer.path = UIBezierPath(ovalIn: CGRect(x: view.bounds.size.width*4/5, y: view.bounds.size.height/7, width: circleWidth, height: circleWidth)).cgPath
//    }
    
    

}

