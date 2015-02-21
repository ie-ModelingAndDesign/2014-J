
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
        StartButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        LoadButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        CGModeButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        OptionButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        ExitButton.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.00)
        
        
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
        LoadButton.addTarget(self, action: "onClickLoadButton:", forControlEvents: .TouchUpInside)
        CGModeButton.addTarget(self, action: "onClickCGModeButton:", forControlEvents: .TouchUpInside)
        OptionButton.addTarget(self, action: "onClickOptionButton:", forControlEvents: .TouchUpInside)
        
        

        
        // ボタンをViewに追加する.
        self.view.addSubview(StartButton)
        self.view.addSubview(LoadButton)
        self.view.addSubview(CGModeButton)
        self.view.addSubview(OptionButton)
        self.view.addSubview(ExitButton)
        
        
        //ボタンのimage
        let newgameView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,40))
        let newgame = UIImage(named: "newgame-y.png")
        newgameView.image = newgame
        newgameView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:100)
        self.view.addSubview(newgameView)
        
        let loadgameView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,40))
        let loadgame = UIImage(named: "load-y.png")
        loadgameView.image = loadgame
        loadgameView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:150)
        self.view.addSubview(loadgameView)
        
        let cgmodeView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,40))
        let cgmode = UIImage(named: "cgmode-y.png")
        cgmodeView.image = cgmode
        cgmodeView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:200)
        self.view.addSubview(cgmodeView)
        
        let optionView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,40))
        let option = UIImage(named: "option-y.png")
        optionView.image = option
        optionView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:250)
        self.view.addSubview(optionView)
        
        let exitView: UIImageView = UIImageView(frame: CGRectMake(0,0,200,40))
        let exit = UIImage(named: "exit-y.png")
        exitView.image = exit
        exitView.layer.position = CGPoint(x: self.view.frame.width/2+200, y:350)
        self.view.addSubview(exitView)
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
    
    func onClickLoadButton(sender: UIButton){
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
    
    func onClickCGModeButton(sender: UIButton){
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
    
    func onClickOptionButton(sender: UIButton){
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
    
}