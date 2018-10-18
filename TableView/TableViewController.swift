//
//  TableViewController.swift
//  TableView
//
//  Created by J on 10/16/18.
//  Copyright © 2018 J. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    private let animes = [
        "Sonic", "Digimon", "Pokemon", "Yu-Gi-Oh",
        "Dragon Ball Z", "Dragon Ball GT","Bleach",
        "Naruto", "Inuyasha"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // needed by the TableViewDataSource Protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }
    
    // needed by the TableViewDataSource Protocol
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Grab the next element in the queue
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        // cell is an UITableViewCell? which you need to
        if (cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier:simpleTableIdentifier)
            print(343)
        }
        cell?.textLabel?.text = animes[indexPath.row]
        return cell!
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
