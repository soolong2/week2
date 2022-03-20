//
//  ViewController.swift
//  week2
//
//  Created by so on 2022/03/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 155
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            var cell = tableView.dequeueReusableCell(withIdentifier: "Poketmongo", for: indexPath) as! PoketmonTableViewCell
            
            cell.poketmonNum.text = "1"
            cell.poketmonName.text = "피카츄"
            cell.poketmonIndex.text = "전기타입"
            return cell
        }else if indexPath.row == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "Poketmongo", for: indexPath) as! PoketmonTableViewCell
            
            cell.poketmonNum.text = "2"
            cell.poketmonName.text = "꼬북이"
            cell.poketmonIndex.text = "물타입"
            return cell
        } else{
            var cell = tableView.dequeueReusableCell(withIdentifier: "Poketmongo", for: indexPath) as! PoketmonTableViewCell
            
            cell.poketmonNum.text = "-"
            cell.poketmonName.text = "---"
            cell.poketmonIndex.text = "--타입"
            return cell
        }
    }
}



