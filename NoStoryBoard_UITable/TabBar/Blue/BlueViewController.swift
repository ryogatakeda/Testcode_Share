import UIKit

//色追加
extension UIColor{
    static let startColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
    static let endColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    static let startColorBad = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    static let endColorBad = #colorLiteral(red: 0.932339251, green: 0.5647454858, blue: 0.5333666205, alpha: 1)
}

class BlueViewController: UIViewController {
    
    //ボタン生成
    let mainButton = UIButton()
    let GGlayer = CAGradientLayer()
    //収支のよてい
    var numStr = "¥10,000"
    //変更フラグ初期化
    var buttonFlag = 0

    //画面ロード
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        
        
        
        //ボタン試作　パーツごとまとめる？
        //スクリーンの情報取得
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        //位置とサイズ
        mainButton.frame = CGRect(x: screenWidth/6, y: screenHeight*2/8, width: screenWidth*2/3, height: screenWidth*2/3)
        //タイトルとフォントサイズ
        mainButton.setTitle(numStr, for: UIControl.State.normal)
        mainButton.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        //丸みの整形
        mainButton.layer.cornerRadius = mainButton.bounds.midY
        //影の整形
        mainButton.layer.shadowColor = UIColor.black.cgColor
        mainButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        mainButton.layer.shadowOpacity = 0.7
        mainButton.layer.shadowRadius = 10
        //グラデーションの整形
        GGlayer.frame = mainButton.bounds
        GGlayer.cornerRadius = mainButton.bounds.midY
        GGlayer.colors = [UIColor.startColor.cgColor,UIColor.endColor.cgColor]
        GGlayer.startPoint = CGPoint(x: 0, y: 0.5)
        GGlayer.endPoint = CGPoint(x: 1, y: 1)
        mainButton.layer.insertSublayer(GGlayer, at: 0)
        
        //ビューの追加
        view.addSubview(mainButton)
        
        //ボタンアクション
        mainButton.addTarget(self, action: #selector(self.tapButton(_:)), for: .touchUpInside)
        
    }
    //ボタン押下時処理
    @objc func tapButton(_ sender:UIButton){
        
        if buttonFlag == 0{
            let numStr = "¥-10,000"
            //タイトル変更
            self.mainButton.setTitle(numStr, for: UIControl.State.normal)
            //色変更
            GGlayer.colors = [UIColor.startColorBad.cgColor,UIColor.endColorBad.cgColor]
            //フラグ切り替え
            buttonFlag = 1
        }
        else {
            let numStr = "¥10,000"
            //タイトル変更
            self.mainButton.setTitle(numStr, for: UIControl.State.normal)
            //色変更
            GGlayer.colors = [UIColor.startColor.cgColor,UIColor.endColor.cgColor]
            //フラグ切り替え
            buttonFlag = 0
        }
        
    }
}
