//
//  RepositoriesTableViewController.swift
//  ZupApp
//
//  Created by Amanda Rosa on 2018-11-20.
//  Copyright © 2018 Amanda Rosa. All rights reserved.
//

import UIKit

class RepositoriesTableViewController: UITableViewController {
    
    var listRepositories = [[String]]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getAppleRepositoriesByAPI()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        tableView.separatorColor = UIColor.clear
    }
    
    func getAppleRepositoriesByAPI() {
        ZupWebApi.getAppleRepositories{(dados) in
            if dados != nil {
                DispatchQueue.main.async {
                    for repo in dados as! [Dictionary<String, AnyObject>] {
                        let repositoryName = repo["name"] as! String
                        let repositoryHtml = repo["html_url"] as! String
                        let repositoryDescription = repo["description"] as? String
                        var repository = [String]()
                        repository.append(repositoryName)
                        repository.append(repositoryHtml)
                        repository.append(repositoryDescription ?? "")
                        self.listRepositories.append(repository)
                    }
                    //print(self.listRepositories)
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let count = listRepositories.count
        return count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RepositoriesTableViewCell
        
        let repository = listRepositories[indexPath.row]
        
        cell.prepareCell(repository)
        
        return cell
    }
    

}
