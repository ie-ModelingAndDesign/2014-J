
import UIKit


class FirstViewController: UIViewController {
    
    let StartButton: UIButton = UIButton()
    let LoadButton: UIButton = UIButton()
    let CGModeButton: UIButton = UIButton()
    let OptionButton: UIButton = UIButton()
    let ExitButton: UIButton = UIButton()

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
        StartButton.frame = CGRectMake(0,0,200,40)
        LoadButton.frame = CGRectMake(0,0,200,40)
        CGModeButton.frame = CGRectMake(0,0,200,40)
        OptionButton.frame = CGRectMake(0,0,200,40)
        ExitButton.frame = CGRectMake(0,0,200,40)
        
        
        // 背景色を設定する.
        StartButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        LoadButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        CGModeButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        OptionButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        ExitButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        
        
        // 枠を丸くする.
        StartButton.layer.masksToBounds = true
        LoadButton.layer.masksToBounds = true
        CGModeButton.layer.masksToBounds = true
        OptionButton.layer.masksToBounds = true
        ExitButton.layer.masksToBounds = true

        
        
        // タイトルを設定する(通常時).
        StartButton.setTitle("NEW GAME", forState: UIControlState.Normal)
        StartButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        LoadButton.setTitle("LOAD GAME", forState: UIControlState.Normal)
        LoadButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        CGModeButton.setTitle("CG MODE", forState: UIControlState.Normal)
        CGModeButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        OptionButton.setTitle("OPTION", forState: UIControlState.Normal)
        OptionButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        ExitButton.setTitle("EXIT", forState: UIControlState.Normal)
        ExitButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    
        
        
        
        // タイトルを設定する(ボタンがハイライトされた時).
        StartButton.setTitle("NEW GAME", forState: UIControlState.Highlighted)
        StartButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        LoadButton.setTitle("LOAD GAME", forState: UIControlState.Highlighted)
        LoadButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        CGModeButton.setTitle("CG MODE", forState: UIControlState.Highlighted)
        CGModeButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        OptionButton.setTitle("OPTION", forState: UIControlState.Highlighted)
        OptionButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        ExitButton.setTitle("EXIT", forState: UIControlState.Highlighted)
        ExitButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        
        
        
        
        // コーナーの半径を設定する.
        StartButton.layer.cornerRadius = 20.0
        LoadButton.layer.cornerRadius = 20.0
        CGModeButton.layer.cornerRadius = 20.0
        OptionButton.layer.cornerRadius = 20.0
        ExitButton.layer.cornerRadius = 20.0
        
        
        
        // ボタンの位置を指定する.
        StartButton.layer.position = CGPoint(x: self.view.frame.width/2+200, y:100)
        LoadButton.layer.position = CGPoint(x: self.view.frame.width/2+200, y:150)
        CGModeButton.layer.position = CGPoint(x: self.view.frame.width/2+200, y:200)
        OptionButton.layer.position = CGPoint(x: self.view.frame.width/2+200, y:250)
        ExitButton.layer.position = CGPoint(x: self.view.frame.width/2+200, y:350)

        
        
        
        // タグを設定する.
        StartButton.tag = 0
        LoadButton.tag = 1
        CGModeButton.tag = 2
        OptionButton.tag = 3
        ExitButton.tag = 4


        
        // イベントを追加する.
        StartButton.addTarget(self, action: "onClickStartButton:", forControlEvents: .TouchUpInside)
        ExitButton.addTarget(self, action: "onClickExitButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンをViewに追加する.
        self.view.addSubview(StartButton)
        self.view.addSubview(LoadButton)
        self.view.addSubview(CGModeButton)
        self.view.addSubview(OptionButton)
        self.view.addSubview(ExitButton)
        
        
        //load file
        //var path = NSBundle.mainBundle().pathForResource("textfile", ofType: "txt")
        //var jsondata = NSData(contentsOfFile: path!)
        
        //let jsonDictionary = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as NSDictionary
        
        //for dat in jsonDictionary {
        //    println("値=[\(dat)]")
       //s }
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    func onClickStartButton(sender: UIButton){
        
        println("onClickStartButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        
        
        // アニメーションを設定する.
        //mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        
        // Viewを移動する.
        self.presentViewController(mySecondViewController, animated: false, completion: nil)
        
        
    }
    
    func onClickExitButton(sender: UIButton){
        println("onClickExitButton")
        println("To Exit.")
        exit(0)
    }
    
}