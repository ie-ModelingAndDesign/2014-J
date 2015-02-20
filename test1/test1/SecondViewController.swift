import UIKit
import Foundation

class SecondViewController: UIViewController {
    var i = 0
    let myLabel = UILabel(frame: CGRectMake(0,0,500,100))
    let eventname = UILabel(frame: CGRectMake(0,0,150,25))
    
    var moji:[String] = ["わたしは○○。逢絵高校の2年生。\nわたしの1つ上にあこがれの先輩がいるんだけど、初めてあったときにその人に一目惚れしちゃったの。","自信はなかったけど、勢いだけで一度告白した事があったの。\n案の定、フラれちゃった。\n","でも、そのとき先輩が\n「今は断る。だけどもう一度だけチャンスをやる。そのときまで待ってやるからでなおしてこい。」","って言ってくれて、このときに\n「もっとかわいくなって、絶対に付き合ってやる！」って決めたの。\n","先輩はもう志望の大学を決定してて,今は勉強の真っ最中。\n\n","勉強の邪魔をしたくないから、わたしも先輩と同じ大学を目指して、もしその大学に入る事ができたら、先輩に告白しようと思うの。\n","同じ大学に入るために勉強して、もっとかわいくなって、\n絶対先輩と付き合ってやる！！\n"
    ]
    var event_name:[String] = ["プロローグ",]
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        /*
        let myImage = UIImage(named: "3resZ.jpg")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        */
        
        /*
        //load text
        let paths1 = NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory,
            .UserDomainMask, true)
        
        let _path = paths1[0].stringByAppendingPathComponent("famas.txt")
        
        println(_path)
        
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
        //println(moji[0])
        //println(moji[1])
        */
        
        
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
            return
        }else {
            i += 1
            myLabel.text = moji[i]
            println("i = \(i)")
            eventchanges()
        }
    }
    
    func eventchanges(){
        switch i {
            case 0 :
                println( "Zero" )
            case 1 , 2 : // 1 , 2 の時はここを実行
                println("1 or 2")
            default : // それ以外の時はここを実行
                println("i is other")
        }
    }
    
    
    
}