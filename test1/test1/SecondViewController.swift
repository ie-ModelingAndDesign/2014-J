import UIKit


class SecondViewController: UIViewController {
    var i = 0
    let myLabel = UILabel(frame: CGRectMake(0,0,500,100))
    let eventname = UILabel(frame: CGRectMake(0,0,150,25))
    
    var moji : [ String ] = [ "hello\ntest\nTest\nTEST" , "2ページ目", "3ページ目"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myLabel.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 300)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 10.0
        eventname.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        eventname.layer.position = CGPoint(x:100,y:25)
        eventname.layer.cornerRadius = 10.0

        // テキスト
        myLabel.text = moji[i]
        eventname.text = "event name"
        
        // 行数無制限
        myLabel.numberOfLines = 4
        myLabel.font = UIFont(name: "HiraKakuProN-W3", size: 24)
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        eventname.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        eventname.shadowColor = UIColor.grayColor()

        self.view.addSubview(myLabel)
        self.view.addSubview(eventname)

        
        
        
        
        let myButton: UIButton = UIButton()
            
            // サイズを設定する.
            myButton.frame = CGRectMake(0,0,500,100)

            // 背景色を設定する.
            myButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.0)
        
            // タイトルを設定する(通常時).
            myButton.setTitle(" ", forState: UIControlState.Normal)
            myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
            // コーナーの半径を設定する.
            myButton.layer.cornerRadius = 20.0
        
            // ボタンの位置を指定する.
            myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:300)
            
            // タグを設定する.
            myButton.tag = 1
        
            // イベントを追加する.
            myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
            // ボタンをViewに追加する.
            self.view.addSubview(myButton)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    func onClickMyButton(sender: UIButton){
        
        println("onClickMyButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")
        i += 1
        if(moji.count == i){
            i = 0
        }
        
        myLabel.text = moji[i]
    }
    
    
    
    
}