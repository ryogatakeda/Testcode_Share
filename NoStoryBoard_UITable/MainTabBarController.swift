import UIKit

class MainTabBarController: UITabBarController {

    //画面ロード
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTabBar()
    }
    
    func initTabBar(){
        //青背景用
        //画面を配置
        let blueVC = BlueViewController()
        blueVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 0)
        //上バーを配置
        let blueNVC = UINavigationController(rootViewController: blueVC)
        
        
        //緑背景用
        let greenVC = GreenViewController()
        greenVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        let greenNVC = UINavigationController(rootViewController: greenVC)
        
        //黄背景用
        let yellowVC = YellowViewController()
        yellowVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        let yellowNVC = UINavigationController(rootViewController: yellowVC)
        
        //まとめておく
        setViewControllers([blueNVC,greenNVC,yellowNVC], animated: false)
    }
}

