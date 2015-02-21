import UIKit
import Foundation

class RandomEventMorning1: UIViewController {
    
    let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,300,300))
    var character0 = UIImage(named: "1.png")
    
    let character1View: UIImageView = UIImageView(frame: CGRectMake(0,0,300,300))
    var character1 = UIImage(named: "famas2.png")
    
    var i = 0
    let myLabel = UILabel(frame: CGRectMake(0,0,600,100))
    let eventname = UILabel(frame: CGRectMake(0,0,150,25))
    
    var moji:[String] = [
        
        "リケコ:ホームルームで先生から授業の準備を頼まれたけど...\n\n",
        "リケコ:理科室ってなんか不気味だな...。\n\n\n",
        "？:(カチャカチャカチャ)\n\n\n",
        "リケコ:!?\n何だろう...何か音がする...\n\n",
        "FA-MAS:やぁ。\n\n\n",
        "リケコ:でたーーーー!!!!!\n\n\n",
        "FA-MAS:待ちなさい。お化けじゃないですよ。\n\n\n",
        "リケコ:お化けじゃない？良かったぁ。\n\n\n",
        "FA-MAS:ところで君、頭が良くなりたいと思った事はないかね？\n\n",
        "リケコ:あ、あたま？はい、ありますけど...\n\n\n",
        "FA-MAS:そんな君に私が特別に作った薬をあげよう。これを飲めばたちまち頭が良くなるぞ。\n\n",
        "リケコ:ほ、本当に？この薬大丈夫なの？\n\n\n",
        "FA-MAS:私が保証する。飲んでみなさい。\n\n\n",
        "リケコ:(ゴクッゴクッ)\n\n\n",
        "リケコ:まずーーーーーい!!!!\n\n\n",
        "FA-MAS:あまりの苦さに逃げてしまったか。\nまぁいい。薬の研究の続きでもするとしよう。\n\n",
        ">変な薬の効果により全ステータスが上がった！\n\n\n"
        
    ]
    var event_name:[String] = ["朝"]
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // 背景に画像を設定する.
        var myImage = UIImage(named: "rika.jpg")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        myImageView.removeFromSuperview()
        self.view.addSubview(myImageView)
        self.view.sendSubviewToBack(myImageView)
        
        character0View.image = character0
        character0View.layer.position = CGPoint(x: 200, y: 125.0)
        character0View.removeFromSuperview()
        self.view.addSubview(character0View)
        
        character1View.image = character1
        character1View.layer.position = CGPoint(x: 500, y: 150.0)
        
        myLabel.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 300)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 10.0
        
        
        eventname.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.75)
        eventname.layer.position = CGPoint(x:100,y:25)
        eventname.layer.cornerRadius = 10.0
        
        // テキスト
        myLabel.text = moji[0]
        eventname.text = event_name[0]
        
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
        
        let TextButton: UIButton = UIButton()
        
        // サイズを設定する.
        TextButton.frame = CGRectMake(0,0,500,100)
        // 背景色を設定する.
        TextButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.0)
        // タイトルを設定する(通常時).
        TextButton.setTitle(" ", forState: UIControlState.Normal)
        TextButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        // コーナーの半径を設定する.
        TextButton.layer.cornerRadius = 20.0
        // ボタンの位置を指定する.
        TextButton.layer.position = CGPoint(x: self.view.frame.width/2, y:300)
        // タグを設定する.
        TextButton.tag = 1
        // イベントを追加する.
        TextButton.addTarget(self, action: "onClickTextButton:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(TextButton)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    func onClickTextButton(sender: UIButton){
        println("onClickTextButton")
        if i == moji.count-1 {
            let myACTViewController: UIViewController = ACTViewController2()
            self.presentViewController(myACTViewController, animated: false, completion: nil)

        }else {
            i += 1
            myLabel.text = moji[i]
            println("i = \(i)")
            eventchanges()
        }
    }
    
    func eventchanges(){
        switch i {
        case 3:
            character0 = UIImage(named: "7.png")
            character0View.image = character0
            
        case 4:
            character1View.removeFromSuperview()
            self.view.addSubview(character1View)
            
        case 5:
            character0 = UIImage(named: "8.png")
            character0View.image = character0
            
        case 6:
            character1 = UIImage(named: "famas.png")
            character1View.image = character1
        case 7:
            character0 = UIImage(named: "16.png")
            character0View.image = character0
        case 8:
            character1 = UIImage(named: "famas2.png")
            character1View.image = character1
        case 11:
            character0 = UIImage(named: "13.png")
            character0View.image = character0
        case 13:
            character0 = UIImage(named: "16.png")
            character0View.image = character0
        case 14:
            character0 = UIImage(named: "8.png")
            character0View.image = character0
        case 15:
            self.view.sendSubviewToBack(character0View)
            character1 = UIImage(named: "famas.png")
            character1View.image = character1
            /*
        case 5,13:
            character0View.removeFromSuperview()
            self.view.addSubview(character0View)
            character0 = UIImage(named: "17.png")
            character0View.image = character0
        case 9 :
            character0 = UIImage(named: "3.png")
            character0View.image = character0
            */
        default : // それ以外の時
            println("i is other")
        }
    }
    
    
    
}