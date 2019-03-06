//
//  TableViewController.swift
//  TableViewSample
//
//  Created by mogmet on 2019/03/06.
//  
//

import UIKit

class TableViewController: UITableViewController {
    let hoge = [
        "a\na\na\na\na\na\na\na\na\na\na\na\n\n",
        "i\ni\ni\ni\ni\ni\ni\ni\ni\ni\ni\ni\n\ni\ni\ni\ni\ni\ni\ni\ni\ni\ni\ni\ni\n\n",
        "u\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\n\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\n\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\nu\n\nn"
                ]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ViewCell
        cell.cellView.inject(text: hoge[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hoge.count
    }
}
