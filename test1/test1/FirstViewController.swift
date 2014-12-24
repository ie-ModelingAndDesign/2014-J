
import UIKit


class FirstViewController: UIViewController {
    
    
    
    
    
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
        let myImage = UIImage(named: "タイトル仮.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width-150, myImage.size.height)
        self.view.addSubview(myImageView)
        
        
        // サイズを設定する.
        
        myButton0.frame = CGRectMake(0,0,200,40)
        myButton1.frame = CGRectMake(0,0,200,40)
        myButton2.frame = CGRectMake(0,0,200,40)
        myButton3.frame = CGRectMake(0,0,200,40)
        myButton4.frame = CGRectMake(0,0,200,40)
        
        
        // 背景色を設定する.
        
        myButton0.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton1.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton2.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton3.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myButton4.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        
        myButton0.layer.masksToBounds = true
        myButton1.layer.masksToBounds = true
        myButton2.layer.masksToBounds = true
        myButton3.layer.masksToBounds = true
        myButton4.layer.masksToBounds = true

        
        
        // タイトルを設定する(通常時).
        
        myButton0.setTitle("NEW GAME", forState: UIControlState.Normal)
        myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton1.setTitle("LOAD GAME", forState: UIControlState.Normal)
        myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton2.setTitle("CG MODE", forState: UIControlState.Normal)
        myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton3.setTitle("OPTION", forState: UIControlState.Normal)
        myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        myButton4.setTitle("EXIT", forState: UIControlState.Normal)
        myButton4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        myButton0.setTitle("NEW GAME", forState: UIControlState.Highlighted)
        myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton1.setTitle("LOAD GAME", forState: UIControlState.Highlighted)
        myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton2.setTitle("CG MODE", forState: UIControlState.Highlighted)
        myButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton3.setTitle("OPTION", forState: UIControlState.Highlighted)
        myButton3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton4.setTitle("EXIT", forState: UIControlState.Highlighted)
        myButton4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        
        myButton0.layer.cornerRadius = 20.0
        myButton1.layer.cornerRadius = 20.0
        myButton2.layer.cornerRadius = 20.0
        myButton3.layer.cornerRadius = 20.0
        myButton4.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
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
        
        myButton0.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
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
    
    func onClickMyButton(sender: UIButton){
        
        println("onClickMyButton:")
        
        println("sender.currentTitile: \(sender.currentTitle)")
        
        println("sender.tag:\(sender.tag)")
        
        // 遷移するViewを定義する.
        
        let mySecondViewController: UIViewController = SecondViewController()
        
        
        // アニメーションを設定する.
        
        //mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        
        // Viewの移動する.
        
        self.presentViewController(mySecondViewController, animated: false, completion: nil)
        
        
    }
    
}