
import UIKit


class Credit: UIViewController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let BackButton: UIButton = UIButton()
        BackButton.frame = CGRectMake(0,0,100,40)
        BackButton.backgroundColor = UIColor(red: 1.0, green: 0.50, blue: 0.0, alpha: 1.0)
        BackButton.setTitle("戻る", forState: UIControlState.Normal)
        BackButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        BackButton.layer.cornerRadius = 20.0
        BackButton.layer.position = CGPoint(x: self.view.frame.width/2-275, y:350)
        BackButton.addTarget(self, action: "onClickBackButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(BackButton)
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,800,800))
        myLabel.backgroundColor = UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 0.0)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "【BGM・SE】\n こんとどふぇ様\n musmus様\n sound audition様\n 効果音ラボ様\n モーツァルト\n\n【背景】\n きまぐれアフター背景素材置場様\n 赤井ろにー様"
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: self.view.bounds.height/2)
        myLabel.numberOfLines = 20
        self.view.addSubview(myLabel)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func onClickBackButton(sender: UIButton){
        
        println("onClickBackButton:")
        // 遷移するViewを定義する.
        let myCreditViewController: UIViewController = FirstViewController()
        self.presentViewController(myCreditViewController, animated: false, completion: nil)
        
    }
}