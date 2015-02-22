import UIKit
import AVFoundation

class sleep1: UIViewController,AVAudioPlayerDelegate {
    var myAudioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //再生する音源のURLを生成.
        let soundFilePath : NSString = NSBundle.mainBundle().pathForResource("chicken-cry1", ofType: "mp3")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath)!
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        //AVAudioPlayerのデリゲートをセット.
        myAudioPlayer.delegate = self
        myAudioPlayer.play()
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.00)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "次の日..."
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        self.view.backgroundColor = UIColor.whiteColor()

        self.view.addSubview(myLabel)
        
        let Button1: UIButton = UIButton()
        Button1.frame = CGRectMake(0,0,self.view.bounds.width+1000,self.view.bounds.height+1000)
        Button1.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.0)
        Button1.setTitle("", forState: UIControlState.Normal)
        Button1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        Button1.layer.cornerRadius = 20.0
        Button1.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.bounds.height/2)
        Button1.addTarget(self, action: "onClickNextButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(Button1)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    func onClickNextButton(Sender: UIButton){
        println("onClickNextButton:")
        let myACTViewController: UIViewController = RandomEventMorning1()
        self.presentViewController(myACTViewController, animated: false, completion: nil)
    }
    
    
    
}