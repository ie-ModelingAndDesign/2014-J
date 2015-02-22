//
//  ACTViewController.swift
//  test1
//
//  Created by TATSUYA SHIGETOMI on 2015/02/19.
//  Copyright (c) 2015年 x. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class ACTViewController1: UIViewController,AVAudioPlayerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        // 背景に画像を設定する.
        var myImage = UIImage(named: "Kyousitu.jpg")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        myImageView.removeFromSuperview()
        self.view.addSubview(myImageView)
        self.view.sendSubviewToBack(myImageView)
        
        /*
            Buttons
        */
        
        let Button1: UIButton = UIButton()
        Button1.frame = CGRectMake(0,0,200,75)
        Button1.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.0)
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
        
        let Button4: UIButton = UIButton()
        Button4.frame = CGRectMake(0,0,100,40)
        Button4.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.25)
        Button4.setTitle("status", forState: UIControlState.Normal)
        Button4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button4.layer.cornerRadius = 20.0
        Button4.layer.position = CGPoint(x:600 ,y:40)
        Button4.addTarget(self, action: "onClickButton4:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button4)
        
        
        // 主人公立ち絵
        let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,800/2,1350/2))
        let character0 = UIImage(named: "rikeko2.png")
        character0View.image = character0
        character0View.layer.position = CGPoint(x: 200, y: 300.0)
        self.view.addSubview(character0View)
        
        //ボタンのimage
        let benkyoView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,75))
        let benkyo = UIImage(named: "べんきょう.png")
        benkyoView.image = benkyo
        benkyoView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:125)
        self.view.addSubview(benkyoView)
        
        let odekakeView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,75))
        let odekake = UIImage(named: "おでかけ.png")
        odekakeView.image = odekake
        odekakeView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:225)
        self.view.addSubview(odekakeView)
        
        let oyasumiView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,75))
        let oyasumi = UIImage(named: "おやすみ.png")
        oyasumiView.image = oyasumi
        oyasumiView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:325)
        self.view.addSubview(oyasumiView)
        
        let statusView: UIImageView = UIImageView(frame: CGRectMake(0,0,100,40))
        let status = UIImage(named: "STATUS.png")
        statusView.image = status
        statusView.layer.position = CGPoint(x:600, y:40)
        self.view.addSubview(statusView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func onClickButton1(sender: UIButton){
        println("onClickButton1")
        let mySecondViewController: UIViewController = SelectQuestion1()
        self.presentViewController(mySecondViewController, animated: false, completion: nil)
        
    }
    
    func onClickButton2(sender: UIButton){
        println("onClickButton2")
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
    
    func onClickButton3(sender: UIButton){
        println("onClickButton3")
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
    
    func onClickButton4(sender: UIButton){
        println("onClickButton4")
        let Status1ViewController: UIViewController = Status1()
        self.presentViewController(Status1ViewController, animated: false, completion: nil)
        
    }
}
