import UIKit

class GreenViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
            ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView:UITableView,didSelectRowAt indexPath: IndexPath){
        print("Selected!"+(self.items[indexPath.row]))
    }
    
    var tableView: UITableView?
    let items = ["フリー(本走)","フリー(客打ち)","セット"]
    
    //画面ロード
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        self.tableView = {
            let tableView = UITableView(frame: self.view.bounds,style: .plain)
            tableView.autoresizingMask = [
                .flexibleWidth,
                .flexibleHeight
            ]
            tableView.delegate = self
            tableView.dataSource = self
            
            self.view.addSubview(tableView)
            
            return tableView
        }()
        
    }
}
