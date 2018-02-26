//
//  ViewController.swift
//  ConstraintTest
//
//  Created by Ömer Faruk Yavuz on 25.02.2018.
//  Copyright © 2018 Faruk Yavuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("testView.frame.origin.x : \(testView.frame.origin.x)")
        print("testView.frame.origin.y : \(testView.frame.origin.y)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 10.0, animations: {
            self.testViewTopConstraint.constant = -(UIScreen.main.bounds.height-20)
            self.view.layoutIfNeeded()
        })
    }


}

extension UIView {

    func setX(_ x:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.x = x
        self.frame = frame
    }

    func setY(_ y:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.y = y
        self.frame = frame
    }

    func setWidth(_ width:CGFloat) {
        var frame:CGRect = self.frame
        frame.size.width = width
        self.frame = frame
    }
    
    func setHeight(_ height:CGFloat) {
        var frame:CGRect = self.frame
        frame.size.height = height
        self.frame = frame
    }
}

extension UIView {
    
    func slideX(x:CGFloat) {
        
        let yPosition = self.frame.origin.y
        
        let height = self.frame.height
        let width = self.frame.width
        
        UIView.animate(withDuration: 1.0, animations: {
            
            self.frame = CGRect(x: x, y: yPosition, width: width, height: height)
        })
    }
    
    
    func slideY(y:CGFloat) {
        
        let xPosition = self.frame.origin.x
        
        let height = self.frame.height
        let width = self.frame.width
        
        UIView.animate(withDuration: 1.0, animations: {
            
            self.frame = CGRect(x: xPosition, y: y, width: width, height: height)
            self.layoutIfNeeded()
        })
    }
}

