//
//  Status.swift
//  test1
//
//  Created by Jana yuta on 2015/01/22.
//  Copyright (c) 2015年 x. All rights reserved.
//

import UIKit
import Foundation

class Status1: UIViewController{
    var i = 0
    let myBackButton: UIButton = UIButton()
    let myLabel = UILabel(frame: CGRectMake(0,0,300,200))
    var moji:[String] = ["名前:リケコ\n\n頭のよさ:52\nかわいさ:23\n人気度:24\n先輩の好感度:54\n"]
    
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
        
        let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,800/2,1350/2))
        let character0 = UIImage(named: "rikeko2.png")
        character0View.image = character0
        character0View.layer.position = CGPoint(x: 200, y: 300.0)
        self.view.addSubview(character0View)
        //ボタンの設定
        //myButton0.frame = CGRectMake(0,0,200,40)
        //myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton0.layer.masksToBounds = true
        
        
        // サイズを設定する.
        myBackButton.frame = CGRectMake(0,0,100,40)
        // 背景色を設定する.
        myBackButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myBackButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.0)
        // タイトルを設定する(通常時).
        myBackButton.setTitle("BACK", forState: UIControlState.Normal)
        myBackButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)//black
        // コーナーの半径を設定する.
        myBackButton.layer.cornerRadius = 20.0
        // ボタンの位置を指定する.
        myBackButton.layer.position = CGPoint(x:600, y:40)//(x: self.view.frame.width/2, y:300)
        // タグを設定する.
        myBackButton.tag = 1
        // イベントを追加する.
        myBackButton.addTarget(self, action: "onClickMyBackButton:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(myBackButton)
        
        
        /*
        //テキストのパス設定
        let paths1 = NSSearchPathForDirectoriesInDomains(
        .DocumentDirectory,
        .UserDomainMask, true)
        
        let _path = paths1[0].stringByAppendingPathComponent("text1.txt")
        
        println(_path)
        
        //load text
        var str = ""
        //str = NSString(contentsOfFile: _path, encoding: NSUTF8StringEncoding, error: nil)!
        str = NSString(contentsOfFile: "/Users/e135701/2014-J/test1/test1/Resources/text1.txt", encoding: NSUTF8StringEncoding, error: nil)!
        
        
        //1文字目（0文字目）
        println(str[str.startIndex])
        
        //n文字目
        let n = 5
        println(str[advance(str.startIndex, n)])
        var char2 = ""
        
        for var i = 0; i < countElements(str); i++ {
        if(str[advance(str.startIndex, i)] == "$"){
        moji.append(char2)
        println("count:\(moji.count)")
        char2 = ""
        i++
        }else {
        char2 += String(str[advance(str.startIndex, i)])
        println(char2)
        }
        }
        println("-String converted.-")
        println(moji[0])
        println(moji[1])
        */
        
        myLabel.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 1.00)
        myLabel.layer.position = CGPoint(x: 500,y: 235) //self.view.bounds.width
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 10.0
        
        // テキスト
        myLabel.text = moji[0]
        //eventname.text = "event_name"
        
        // 行数無制限
        myLabel.numberOfLines = 7
        myLabel.font = UIFont(name: "HiraKakuProN-W3", size: 24)
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        // eventname.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        // eventname.shadowColor = UIColor.grayColor()
        
        self.view.addSubview(myLabel)
        // self.view.addSubview(eventname)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    //back機能
    func onClickMyBackButton(Sender: UIButton){
        println("onClickMyBackButton:")
        
        let myBack: UIViewController = ACTViewController1()
        
        self.presentViewController(myBack, animated: false, completion: nil)
        
        
        
        
    }
    
    
    
    
    
}