//
//  ViewController.swift
//  ClickCounter
//
//  Created by 彦 曲 on 4/14/15.
//  Copyright (c) 2015 Q software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        //associate label's view to the view hierarchy, otherwise nothing shows on screen
        self.view.addSubview(label)
        self.label = label
        
        //Count Up Button
        var countUpButton = UIButton()
        countUpButton.frame = CGRectMake(150,250,100,60)
        countUpButton.setTitle("countUp", forState: .Normal)
        countUpButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(countUpButton)
        
        countUpButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //decrement Button
        var countDownButton = UIButton()
        countDownButton.frame = CGRectMake(150, 300, 100, 60)
        countDownButton.setTitle("countDown", forState: .Normal)
        countDownButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(countDownButton)
        countDownButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
    }
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
    }
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
    }
}

