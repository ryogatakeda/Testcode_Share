import UIKit

class YellowViewController: UIViewController {

        //テキストボックス
        let titleLabel: UILabel = {
            let view = UILabel.init()
            view.text = "はろーわーるど"
            view.textColor = .white
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        //Modal遷移ボタン
        lazy var button: UIButton = {
            let view = UIButton.init()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .systemBlue
            view.setTitle("Modal遷移", for: .normal)
            view.addTarget(self, action: #selector(openModal(_:)), for: .touchDown)
            return view
        }()
    
        //Navigation遷移ボタン
        lazy var Nextbutton: UIButton = {
            let view = UIButton.init()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .systemGreen
            view.setTitle("Navigation遷移", for: .normal)
            view.addTarget(self, action: #selector(openNavigation(_:)), for: .touchDown)
            return view
        }()
    
    //画面ロード
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        //パーツを表示
        view.addSubview(titleLabel)
        view.addSubview(button)
        view.addSubview(Nextbutton)
        
        //画面配置の設定
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Nextbutton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 10),
            Nextbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    //Modalの遷移情報
    @objc func openModal(_ sender: UIButton){
        let modalViewController = ModalViewController.init()
        modalViewController.modalPresentationStyle = .fullScreen
        present(modalViewController, animated: true, completion: nil)
    }
    
    //Navigationの遷移情報
    @objc func openNavigation(_ sender: UIButton){
        
//        let nextPageViewController = NextPageViewController.init()
//        let customNavigationViewController = UINavigationController.init(rootViewController: nextPageViewController)
//        present(customNavigationViewController, animated: true, completion: nil)
        
        let aaa = NextPageViewController()
        aaa.modalPresentationStyle = .fullScreen
        let bbb = UINavigationController(rootViewController: aaa)
        
        self.present(bbb, animated: true, completion: nil)
    }
}

