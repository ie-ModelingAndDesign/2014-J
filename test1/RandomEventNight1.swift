import UIKit
import Foundation
import AVFoundation

class RandomEventNight1: UIViewController,AVAudioPlayerDelegate {
     var myAudioPlayer : AVAudioPlayer!
    
    let character0View: UIImageView = UIImageView(frame: CGRectMake(0,0,300,300))
    var character0 = UIImage(named: "1.png")
    
    let character1View: UIImageView = UIImageView(frame: CGRectMake(0,0,236,576))
    var character1 = UIImage(named: "character2-2.png")
    
    var i = 0
    let myLabel = UILabel(frame: CGRectMake(0,0,600,100))
    let eventname = UILabel(frame: CGRectMake(0,0,150,25))
    
    var moji:[String] = [
        
        
        "???:ちょっと。そこの君。(イケボ\n\n\n",
        "リケコ:え、何ですか？\n\n\n",
        "???:俺は三年の池上。\nところで君、好きな人がいるでしょ。しかも先輩で。(イケボ\n",
        "リケコ:なんで分かったんですか!?\n\n\n",
        "池上先輩:顔を見たら分かるよ。\nよかったら、手伝ってあげようか。(イケボ\n\n",
        "リケコ:本当ですか!ありがとうございます!\n\n\n",
        "池上先輩:いいよ。恋する乙女の役に立ちたいし。(イケボ\n\n",
        "池上先輩:また今度ここにおいで。\n教えてあげられる事は何でも教えるから。(イケボ\n\n",
        ">イケメンな人から先輩のことについて色々教えてもらった！\n\n"
        
    ]
    var event_name:[String] = ["夕方"]
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //再生する音源のURLを生成.
        let soundFilePath : NSString = NSBundle.mainBundle().pathForResource("モーツァルト 大いなる魂と高貴な心は(アリア) K.578 Sエリーザベト・シュヴァルツコップ 指揮ジョージ・セル アロンドン交響楽団", ofType: "mp3")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath)!
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer.delegate = self
        
        
        // 背景に画像を設定する.
        var myImage = UIImage(named: "koumonyoru.jpg")!
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
        character1View.layer.position = CGPoint(x: 500, y: 300.0)
        character1View.removeFromSuperview()
        self.view.addSubview(character1View)

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
            myAudioPlayer.pause()
            let myACTViewController: UIViewController = sleep1()
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
        case 1:
            character0 = UIImage(named: "0.png")
            character0View.image = character0
        case 2:
            myAudioPlayer.play()
        case 3:
            character0 = UIImage(named: "8.png")
            character0View.image = character0
            
        case 5:
            character0 = UIImage(named: "1.png")
            character0View.image = character0
            
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
    
    //音楽再生が成功した時に呼ばれるメソッド
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        println("Music Finish")
        myAudioPlayer.play()
    }
    
    //デコード中にエラーが起きた時に呼ばれるメソッド.
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        println("Error")
    }
    
}