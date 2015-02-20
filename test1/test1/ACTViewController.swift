//
//  ACTViewController.swift
//  test1
//
//  Created by TATSUYA SHIGETOMI on 2015/02/19.
//  Copyright (c) 2015年 x. All rights reserved.
//

import Foundation
import UIKit

class ACTViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        /*
            Buttons
        */
        
        let Button1: UIButton = UIButton()
        Button1.frame = CGRectMake(0,0,200,75)
        Button1.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.75)
        Button1.setTitle("勉強", forState: UIControlState.Normal)
        Button1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button1.layer.cornerRadius = 20.0
        Button1.layer.position = CGPoint(x: self.view.frame.width/2+200, y:125)
        Button1.addTarget(self, action: "onClickButton1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button1)
        
        let Button2: UIButton = UIButton()
        Button2.frame = CGRectMake(0,0,200,75)
        Button2.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.25)
        Button2.setTitle("出かける", forState: UIControlState.Normal)
        Button2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button2.layer.cornerRadius = 20.0
        Button2.layer.position = CGPoint(x: self.view.frame.width/2+200, y:225)
        Button2.addTarget(self, action: "onClickButton2:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button2)
        
        let Button3: UIButton = UIButton()
        Button3.frame = CGRectMake(0,0,200,75)
        Button3.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.25)
        Button3.setTitle("休む", forState: UIControlState.Normal)
        Button3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button3.layer.cornerRadius = 20.0
        Button3.layer.position = CGPoint(x: self.view.frame.width/2+200, y:325)
        Button3.addTarget(self, action: "onClickButton3:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button3)
        
        
        // 主人公立ち絵
        let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,500,500))
        let character0 = UIImage(named: "0.png")
        character0View.image = character0
        character0View.layer.position = CGPoint(x: 200, y: 200.0)
        self.view.addSubview(character0View)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func onClickButton1(sender: UIButton){
        println("onClickButton1")
    }
    
    func onClickButton2(sender: UIButton){
        println("onClickButton2")
    }
    
    func onClickButton3(sender: UIButton){
        println("onClickButton3")
    }
}
