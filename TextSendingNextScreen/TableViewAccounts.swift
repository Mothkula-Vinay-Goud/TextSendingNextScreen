//
//  TableViewAccounts.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//

import UIKit

class TableViewAccounts: UIViewController,UITableViewDataSource {
    
    var objTableView: UITableView?
    
    var arrAccounts: [AccountData]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Dashboard"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        view.backgroundColor = .white
        
        arrAccounts = AccountData.getMockData()
        objTableView = UITableView()
        objTableView?.dataSource = self
        objTableView?.translatesAutoresizingMaskIntoConstraints = false
        objTableView?.register(AccountsTableViewCell.self, forCellReuseIdentifier: "AccountsTableViewCell")
        objTableView?.register(UpgradeTableViewCell.self, forCellReuseIdentifier: "UpgradeTableViewCell")
        

        // Do any additional setup after loading the view.
        if let objTableView = objTableView {
            view.addSubview(objTableView)
            
            NSLayoutConstraint.activate([
                objTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                objTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                objTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                objTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                
                
            ])
        }
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            return "Accounts"
        }
        return ""
    }
    func numberOfSections(in tableView: UITableView) -> Int {
      2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else{
            return 3
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let cellOne = tableView.dequeueReusableCell(withIdentifier: "UpgradeTableViewCell", for: indexPath) as! UpgradeTableViewCell
            return cellOne
        }
            let cell = tableView.dequeueReusableCell(withIdentifier: "AccountsTableViewCell", for: indexPath) as! AccountsTableViewCell
        
        let user = arrAccounts![indexPath.row]
        cell.setData(user)
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
