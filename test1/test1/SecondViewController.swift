
import UIKit


class SecondViewController: UIViewController {
    
    
    
    
    
    let myButton0: UIButton = UIButton()
    let myButton1: UIButton = UIButton()
    
   // let myWindow = UIWindow()
    //let myWindowButton = UIButton()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // サイズを設定する.
        
        myButton0.frame = CGRectMake(0,0,200,40)
        myButton1.frame = CGRectMake(0,0,200,40)
        
        
        // 背景色を設定する.
        
        myButton0.backgroundColor = UIColor.redColor()
        myButton1.backgroundColor = UIColor.blueColor()
        
        
        // 枠を丸くする.
        
        myButton0.layer.masksToBounds = true
        myButton1.layer.masksToBounds = true
        
        
        
        // タイトルを設定する(通常時).
        
        myButton0.setTitle("BACK", forState: UIControlState.Normal)
        
        myButton0.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        myButton1.setTitle("BACK", forState: UIControlState.Normal)
        
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        
        myButton0.setTitle("BACK", forState: UIControlState.Highlighted)
        
        myButton0.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        myButton1.setTitle("BACK", forState: UIControlState.Highlighted)
        
        myButton1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        
        
        // コーナーの半径を設定する.
        
        myButton0.layer.cornerRadius = 20.0
        myButton1.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        
        myButton0.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        myButton1.layer.position = CGPoint(x: self.view.frame.width/2, y:250)
        
        
        
        
        // タグを設定する.
        
         myButton0.tag = 0
         myButton1.tag = 1
        
        
        
        
        // イベントを追加する.
        
        myButton0.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myButton1.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンをViewに追加する.
        
        self.view.addSubview(myButton0)
        self.view.addSubview(myButton1)
        
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
        
        let mySecondViewController: UIViewController = FirstViewController()
        
        
        // アニメーションを設定する.
        
        //mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        
        // Viewの移動する.
        
        self.presentViewController(mySecondViewController, animated: false, completion: nil)
        
        
    }
    
}