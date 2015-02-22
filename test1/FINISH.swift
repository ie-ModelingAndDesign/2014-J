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

class FINISH: UIViewController,AVAudioPlayerDelegate {
    var myAudioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //再生する音源のURLを生成.
        let soundFilePath : NSString = NSBundle.mainBundle().pathForResource("tw006", ofType: "mp3")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath)!
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer.delegate = self
        myAudioPlayer.play()

        self.view.backgroundColor = UIColor.whiteColor()

        // 主人公立ち絵
        let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,450/1.5,600/1.5))
        let character0 = UIImage(named: "rikeko.png")
        character0View.image = character0
        character0View.layer.position = CGPoint(x:200, y: 200.0)
        self.view.addSubview(character0View)
        
        let Button1: UIButton = UIButton()
        Button1.frame = CGRectMake(0,0,200,40)
        Button1.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.50)
        Button1.setTitle("メニュー画面に戻ります", forState: UIControlState.Normal)
        Button1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button1.layer.cornerRadius = 20.0
        Button1.layer.position = CGPoint(x: self.view.frame.width/2+200, y:325)
        Button1.addTarget(self, action: "onClickButton1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button1)
        

        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,200))
        myLabel.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "体験版はここまでです！\nThank you for playng!"
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2+200,y: 100)
        myLabel.numberOfLines = 4
        self.view.addSubview(myLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func onClickButton1(sender: UIButton){
        myAudioPlayer.pause()
        println("onClickButton1")
        let Status1ViewController: UIViewController = FirstViewController()
        self.presentViewController(Status1ViewController, animated: false, completion: nil)
        
    }
}
