//
//  SelectQuestion.swift
//  test1
//
//  Created by Yusuke Onna on 2015/02/20.
//  Copyright (c) 2015年 x. All rights reserved.
//

import Foundation
import UIKit

class SelectQuestion1: UIViewController {
    
    
    
    
    let myButtonX: UIButton = UIButton()
    let myButton0: UIButton = UIButton()
    let myButton1: UIButton = UIButton()
    let myButton2: UIButton = UIButton()
    let myButton3: UIButton = UIButton()
    let myButton4: UIButton = UIButton()
    
    
    
    //let myWindow = UIWindow()
    //let myWindowButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        // 背景に画像を設定する.
        let myImage = UIImage(named: "5.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(-130, -150, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
        
        // サイズを設定する.
        
        myButtonX.frame = CGRectMake(0,0,400,40)
        myButton0.frame = CGRectMake(0,0,200,40)
        myButton1.frame = CGRectMake(0,0,200,40)
        myButton2.frame = CGRectMake(0,0,200,40)
        myButton3.frame = CGRectMake(0,0,200,40)
        myButton4.frame = CGRectMake(0,0,200,40)
        
        
        // 背景色を設定する.
        
        myButtonX.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton4.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        
        myButtonX.layer.masksToBounds = true
        myButton0.layer.masksToBounds = true
        myButton1.layer.masksToBounds = true
        myButton2.layer.masksToBounds = true
        myButton3.layer.masksToBounds = true
        myButton4.layer.masksToBounds = true
        
        
        
        // タイトルを設定する(通常時).
        
        myButtonX.setTitle("科目選択", forState: UIControlState.Normal)
        myButtonX.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton0.setTitle("数学I・A", forState: UIControlState.Normal)
        myButton0.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton1.setTitle("???", forState: UIControlState.Normal)
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton2.setTitle("???", forState: UIControlState.Normal)
        myButton2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton3.setTitle("???", forState: UIControlState.Normal)
        myButton3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton4.setTitle("RETURN", forState: UIControlState.Normal)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        myButton0.setTitle("数学I・A", forState: UIControlState.Highlighted)
        myButton0.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton1.setTitle("???", forState: UIControlState.Highlighted)
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton2.setTitle("???", forState: UIControlState.Highlighted)
        myButton2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton3.setTitle("???", forState: UIControlState.Highlighted)
        myButton3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton4.setTitle("RETURN", forState: UIControlState.Highlighted)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        
        myButtonX.layer.cornerRadius = 20.0
        myButton0.layer.cornerRadius = 20.0
        myButton1.layer.cornerRadius = 20.0
        myButton2.layer.cornerRadius = 20.0
        myButton3.layer.cornerRadius = 20.0
        myButton4.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
        myButtonX.layer.position = CGPoint(x: 200, y:30)
        myButton0.layer.position = CGPoint(x: self.view.frame.width/2+200, y:100)
        myButton1.layer.position = CGPoint(x: self.view.frame.width/2+200, y:150)
        myButton2.layer.position = CGPoint(x: self.view.frame.width/2+200, y:200)
        myButton3.layer.position = CGPoint(x: self.view.frame.width/2+200, y:250)
        myButton4.layer.position = CGPoint(x: self.view.frame.width/2+200, y:350)
        
        
        
        
        // タグを設定する.
        
        myButton0.tag = 0
        myButton1.tag = 1
        myButton2.tag = 2
        myButton3.tag = 3
        myButton4.tag = 4
        
        
        
        // イベントを追加する.
        
        myButton0.addTarget(self, action: "onClickMIAButton:", forControlEvents: .TouchUpInside)
        myButton1.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        myButton2.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        myButton3.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        
        myButton4.addTarget(self, action: "onClickReturnButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
        self.view.addSubview(myButtonX)
        self.view.addSubview(myButton0)
        self.view.addSubview(myButton1)
        self.view.addSubview(myButton2)
        self.view.addSubview(myButton3)
        self.view.addSubview(myButton4)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    /*
    
    ボタンイベント.
    
    */
    
    func onClickLockedButton(sender: UIButton){
        println("onClickLockedButton")
        // UIAlertControllerを作成する.
        let myAlert = UIAlertController(title: "体験版では選択できません", message: "製品版を買ってね！", preferredStyle: .Alert)
        // OKのアクションを作成する.
        let myOkAction = UIAlertAction(title: "OK", style: .Default) { action in
            println("Action OK!!")
        }
        // OKのActionを追加する.
        myAlert.addAction(myOkAction)
        // UIAlertを発動する.
        presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    
    func onClickMIAButton(sender: UIButton){
        println("onClickMIAButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = MathIA1()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickMIIBButton(sender: UIButton){
        println("onClickMIIBButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = MathIIB()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickPIButton(sender: UIButton){
        println("onClickPIButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = PhysicsI()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickPIIButton(sender: UIButton){
        println("onClickPIIButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = PhysicsII()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    
    func onClickReturnButton(sender: UIButton){
        
        println("onClickReturnButton:")
        
        println("sender.currentTitile: \(sender.currentTitle)")
        
        println("sender.tag:\(sender.tag)")
        
        // 遷移するViewを定義する.
        
        let myRController: UIViewController = ACTViewController1()
        
        self.presentViewController(myRController, animated: false, completion: nil)
        
    }
    
    
    
}






class SelectQuestion2: UIViewController {
    
    
    
    
    let myButtonX: UIButton = UIButton()
    let myButton0: UIButton = UIButton()
    let myButton1: UIButton = UIButton()
    let myButton2: UIButton = UIButton()
    let myButton3: UIButton = UIButton()
    let myButton4: UIButton = UIButton()
    
    
    
    //let myWindow = UIWindow()
    //let myWindowButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        // 背景に画像を設定する.
        let myImage = UIImage(named: "5.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(-130, -150, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
        
        // サイズを設定する.
        
        myButtonX.frame = CGRectMake(0,0,400,40)
        myButton0.frame = CGRectMake(0,0,200,40)
        myButton1.frame = CGRectMake(0,0,200,40)
        myButton2.frame = CGRectMake(0,0,200,40)
        myButton3.frame = CGRectMake(0,0,200,40)
        myButton4.frame = CGRectMake(0,0,200,40)
        
        
        // 背景色を設定する.
        
        myButtonX.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton4.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        
        myButtonX.layer.masksToBounds = true
        myButton0.layer.masksToBounds = true
        myButton1.layer.masksToBounds = true
        myButton2.layer.masksToBounds = true
        myButton3.layer.masksToBounds = true
        myButton4.layer.masksToBounds = true
        
        
        
        // タイトルを設定する(通常時).
        
        myButtonX.setTitle("科目選択", forState: UIControlState.Normal)
        myButtonX.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton0.setTitle("数学I・A", forState: UIControlState.Normal)
        myButton0.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton1.setTitle("???", forState: UIControlState.Normal)
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton2.setTitle("???", forState: UIControlState.Normal)
        myButton2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton3.setTitle("???", forState: UIControlState.Normal)
        myButton3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton4.setTitle("RETURN", forState: UIControlState.Normal)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        myButton0.setTitle("数学I・A", forState: UIControlState.Highlighted)
        myButton0.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton1.setTitle("???", forState: UIControlState.Highlighted)
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton2.setTitle("???", forState: UIControlState.Highlighted)
        myButton2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton3.setTitle("???", forState: UIControlState.Highlighted)
        myButton3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        myButton4.setTitle("RETURN", forState: UIControlState.Highlighted)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        
        myButtonX.layer.cornerRadius = 20.0
        myButton0.layer.cornerRadius = 20.0
        myButton1.layer.cornerRadius = 20.0
        myButton2.layer.cornerRadius = 20.0
        myButton3.layer.cornerRadius = 20.0
        myButton4.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
        myButtonX.layer.position = CGPoint(x: 200, y:30)
        myButton0.layer.position = CGPoint(x: self.view.frame.width/2+200, y:100)
        myButton1.layer.position = CGPoint(x: self.view.frame.width/2+200, y:150)
        myButton2.layer.position = CGPoint(x: self.view.frame.width/2+200, y:200)
        myButton3.layer.position = CGPoint(x: self.view.frame.width/2+200, y:250)
        myButton4.layer.position = CGPoint(x: self.view.frame.width/2+200, y:350)
        
        
        
        
        // タグを設定する.
        
        myButton0.tag = 0
        myButton1.tag = 1
        myButton2.tag = 2
        myButton3.tag = 3
        myButton4.tag = 4
        
        
        
        // イベントを追加する.
        
        myButton0.addTarget(self, action: "onClickMIAButton:", forControlEvents: .TouchUpInside)
        myButton1.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        myButton2.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        myButton3.addTarget(self, action: "onClickLockedButton:", forControlEvents: .TouchUpInside)
        
        myButton4.addTarget(self, action: "onClickReturnButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
        self.view.addSubview(myButtonX)
        self.view.addSubview(myButton0)
        self.view.addSubview(myButton1)
        self.view.addSubview(myButton2)
        self.view.addSubview(myButton3)
        self.view.addSubview(myButton4)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    /*
    
    ボタンイベント.
    
    */
    
    func onClickLockedButton(sender: UIButton){
        println("onClickLockedButton")
        // UIAlertControllerを作成する.
        let myAlert = UIAlertController(title: "体験版では選択できません", message: "製品版を買ってね！", preferredStyle: .Alert)
        // OKのアクションを作成する.
        let myOkAction = UIAlertAction(title: "OK", style: .Default) { action in
            println("Action OK!!")
        }
        // OKのActionを追加する.
        myAlert.addAction(myOkAction)
        // UIAlertを発動する.
        presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    
    func onClickMIAButton(sender: UIButton){
        println("onClickMIAButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = MathIA2()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickMIIBButton(sender: UIButton){
        println("onClickMIIBButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = MathIIB()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickPIButton(sender: UIButton){
        println("onClickPIButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = PhysicsI()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    func onClickPIIButton(sender: UIButton){
        println("onClickPIIButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        // 遷移するViewを定義する.
        let myQController: UIViewController = PhysicsII()
        self.presentViewController(myQController, animated: false, completion: nil)
    }
    
    
    func onClickReturnButton(sender: UIButton){
        
        println("onClickReturnButton:")
        
        println("sender.currentTitile: \(sender.currentTitle)")
        
        println("sender.tag:\(sender.tag)")
        
        // 遷移するViewを定義する.
        
        let myRController: UIViewController = ACTViewController2()
        
        self.presentViewController(myRController, animated: false, completion: nil)
        
    }
    
    
    
}