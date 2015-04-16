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
    @IBOutlet var label:UILabel!
    @IBOutlet var label2:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       }
    @IBAction func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"

        toggleBackGround()
    }
    @IBAction func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        toggleBackGround()
    }
    func toggleBackGround(){
        self.view.backgroundColor = getRandomColor()
    }
    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
}

