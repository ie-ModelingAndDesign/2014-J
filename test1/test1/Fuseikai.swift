//
//  Fuseikai.swift
//  test1
//
//  Created by Yusuke Onna on 2015/02/20.
//  Copyright (c) 2015年 x. All rights reserved.
//

import Foundation
import UIKit

class Fuseikai1: UIViewController {
    
    
    
    
    let myButtonX: UIButton = UIButton()
    //let myButton0: UIButton = UIButton()
    //let myButton1: UIButton = UIButton()
    //let myButton2: UIButton = UIButton()
    //let myButton3: UIButton = UIButton()
    let myButton4: UIButton = UIButton()
    
    
    
    //let myWindow = UIWindow()
    //let myWindowButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        // 背景に画像を設定する.
        let myImage = UIImage(named: "8.png")!
        var myImageView = UIImageView()
        
        myImageView.image = myImage
        myImageView.frame = CGRectMake(-130, -150, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
        
        // Labelを作成
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        // 背景をオレンジ色にする
        myLabel.backgroundColor = UIColor.redColor()
        // 枠を丸くする
        myLabel.layer.masksToBounds = true
        // コーナーの半径
        myLabel.layer.cornerRadius = 20.0
        // Labelに文字を代入
        myLabel.text = "正解 : A"
        // 文字の色を白にする
        myLabel.textColor = UIColor.whiteColor()
        // 文字の影の色をグレーにする
        myLabel.shadowColor = UIColor.grayColor()
        // Textを中央寄せにする
        myLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する
        myLabel.layer.position = CGPoint(x: 500,y: 200)
        // Viewの背景色を青にする
        //self.view.backgroundColor = UIColor.cyanColor()
        // ViewにLabelを追加
        self.view.addSubview(myLabel)
        
        
        
        
        
        
        // サイズを設定する.
        
        myButtonX.frame = CGRectMake(0,0,400,40)
        //myButton0.frame = CGRectMake(0,0,100,40)
        //myButton1.frame = CGRectMake(0,0,100,40)
        //myButton2.frame = CGRectMake(0,0,100,40)
        //myButton3.frame = CGRectMake(0,0,100,40)
        myButton4.frame = CGRectMake(0,0,100,40)
        
        
        // 背景色を設定する.
        
        myButtonX.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton4.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        
        myButtonX.layer.masksToBounds = true
        //myButton0.layer.masksToBounds = true
        //myButton1.layer.masksToBounds = true
        //myButton2.layer.masksToBounds = true
        //myButton3.layer.masksToBounds = true
        myButton4.layer.masksToBounds = true
        
        
        
        // タイトルを設定する(通常時).
        
        myButtonX.setTitle("不正解！", forState: UIControlState.Normal)
        myButtonX.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        //myButton0.setTitle("不正解", forState: UIControlState.Normal)
        //myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton1.setTitle("正解", forState: UIControlState.Normal)
        //myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton2.setTitle("不正解", forState: UIControlState.Normal)
        //myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton3.setTitle("不正解", forState: UIControlState.Normal)
        //myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton4.setTitle("NEXT", forState: UIControlState.Normal)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        //myButton0.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton1.setTitle("正解", forState: UIControlState.Highlighted)
        //myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton2.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton3.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton4.setTitle("NEXT", forState: UIControlState.Highlighted)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        myButtonX.layer.cornerRadius = 20.0
        //myButton0.layer.cornerRadius = 20.0
        //myButton1.layer.cornerRadius = 20.0
        //myButton2.layer.cornerRadius = 20.0
        //myButton3.layer.cornerRadius = 20.0
        myButton4.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
        myButtonX.layer.position = CGPoint(x: 200, y:30)
        //myButton0.layer.position = CGPoint(x: 100, y:300)
        //myButton1.layer.position = CGPoint(x: 250, y:300)
        //myButton2.layer.position = CGPoint(x: 400, y:300)
        //myButton3.layer.position = CGPoint(x: 550, y:300)
        myButton4.layer.position = CGPoint(x: self.view.frame.width/2+280, y:350)
        
        
        
        
        // タグを設定する.
        
        //myButton0.tag = 0
        //myButton1.tag = 1
        //myButton2.tag = 2
        //myButton3.tag = 3
        myButton4.tag = 4
        
        
        
        // イベントを追加する.
        
        //myButton0.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myButton4.addTarget(self, action: "onClickNextButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
        self.view.addSubview(myButtonX)
        //self.view.addSubview(myButton0)
        //self.view.addSubview(myButton1)
        //self.view.addSubview(myButton2)
        //self.view.addSubview(myButton3)
        self.view.addSubview(myButton4)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    /*
    
    ボタンイベント.
    
    */
    
    
    func onClickNextButton(sender: UIButton){
        
        println("onClickNextButton:")
        
        println("sender.currentTitile: \(sender.currentTitle)")
        
        println("sender.tag:\(sender.tag)")
        
        // 遷移するViewを定義する.
        
        let myNController: UIViewController = RandomEventNight1()
        
        self.presentViewController(myNController, animated: false, completion: nil)
        
    }
    

}






class Fuseikai2: UIViewController {
    
    
    
    
    let myButtonX: UIButton = UIButton()
    //let myButton0: UIButton = UIButton()
    //let myButton1: UIButton = UIButton()
    //let myButton2: UIButton = UIButton()
    //let myButton3: UIButton = UIButton()
    let myButton4: UIButton = UIButton()
    
    
    
    //let myWindow = UIWindow()
    //let myWindowButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        // 背景に画像を設定する.
        let myImage = UIImage(named: "9.png")!
        var myImageView = UIImageView()
        
        myImageView.image = myImage
        myImageView.frame = CGRectMake(-130, -150, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
        
        // Labelを作成
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        // 背景をオレンジ色にする
        myLabel.backgroundColor = UIColor.redColor()
        // 枠を丸くする
        myLabel.layer.masksToBounds = true
        // コーナーの半径
        myLabel.layer.cornerRadius = 20.0
        // Labelに文字を代入
        myLabel.text = "正解 : A"
        // 文字の色を白にする
        myLabel.textColor = UIColor.whiteColor()
        // 文字の影の色をグレーにする
        myLabel.shadowColor = UIColor.grayColor()
        // Textを中央寄せにする
        myLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する
        myLabel.layer.position = CGPoint(x: 500,y: 200)
        // Viewの背景色を青にする
        //self.view.backgroundColor = UIColor.cyanColor()
        // ViewにLabelを追加
        self.view.addSubview(myLabel)
        
        
        
        
        
        // サイズを設定する.
        
        myButtonX.frame = CGRectMake(0,0,400,40)
        //myButton0.frame = CGRectMake(0,0,100,40)
        //myButton1.frame = CGRectMake(0,0,100,40)
        //myButton2.frame = CGRectMake(0,0,100,40)
        //myButton3.frame = CGRectMake(0,0,100,40)
        myButton4.frame = CGRectMake(0,0,100,40)
        
        
        // 背景色を設定する.
        
        myButtonX.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        //myButton3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton4.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        
        myButtonX.layer.masksToBounds = true
        //myButton0.layer.masksToBounds = true
        //myButton1.layer.masksToBounds = true
        //myButton2.layer.masksToBounds = true
        //myButton3.layer.masksToBounds = true
        myButton4.layer.masksToBounds = true
        
        
        
        // タイトルを設定する(通常時).
        
        myButtonX.setTitle("不正解！", forState: UIControlState.Normal)
        myButtonX.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        //myButton0.setTitle("不正解", forState: UIControlState.Normal)
        //myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton1.setTitle("正解", forState: UIControlState.Normal)
        //myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton2.setTitle("不正解", forState: UIControlState.Normal)
        //myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        //myButton3.setTitle("不正解", forState: UIControlState.Normal)
        //myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton4.setTitle("NEXT", forState: UIControlState.Normal)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        //myButton0.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton1.setTitle("正解", forState: UIControlState.Highlighted)
        //myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton2.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        //myButton3.setTitle("不正解", forState: UIControlState.Highlighted)
        //myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton4.setTitle("NEXT", forState: UIControlState.Highlighted)
        myButton4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        myButtonX.layer.cornerRadius = 20.0
        //myButton0.layer.cornerRadius = 20.0
        //myButton1.layer.cornerRadius = 20.0
        //myButton2.layer.cornerRadius = 20.0
        //myButton3.layer.cornerRadius = 20.0
        myButton4.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
        myButtonX.layer.position = CGPoint(x: 200, y:30)
        //myButton0.layer.position = CGPoint(x: 100, y:300)
        //myButton1.layer.position = CGPoint(x: 250, y:300)
        //myButton2.layer.position = CGPoint(x: 400, y:300)
        //myButton3.layer.position = CGPoint(x: 550, y:300)
        myButton4.layer.position = CGPoint(x: self.view.frame.width/2+280, y:350)
        
        
        
        
        // タグを設定する.
        
        //myButton0.tag = 0
        //myButton1.tag = 1
        //myButton2.tag = 2
        //myButton3.tag = 3
        myButton4.tag = 4
        
        
        
        // イベントを追加する.
        
        //myButton0.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myButton4.addTarget(self, action: "onClickNextButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
        self.view.addSubview(myButtonX)
        //self.view.addSubview(myButton0)
        //self.view.addSubview(myButton1)
        //self.view.addSubview(myButton2)
        //self.view.addSubview(myButton3)
        self.view.addSubview(myButton4)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    /*
    
    ボタンイベント.
    
    */
    
    
    func onClickNextButton(sender: UIButton){
        
        println("onClickNextButton:")
        
        println("sender.currentTitile: \(sender.currentTitle)")
        
        println("sender.tag:\(sender.tag)")
        
        // 遷移するViewを定義する.
        
        let myNController: UIViewController = RandomEventNight2()
        
        self.presentViewController(myNController, animated: false, completion: nil)
        
    }
    
    
}