//
//  ViewController.swift
//  tableviewdictionaryxib
//
//  Created by Dr.Mac on 24/02/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var player = [["Name":"Rohit sharma","prise":"16 cr.","img":"rohit"],["Name":"Jasprit bumrah","prise":"10 cr.","img":"bumrah"],["Name":"jofra archer","prise":"14 cr","img":"jofra"],["Name":"kieron pollard","prise":"7 cr.","img":"pollard"],["Name":"Ishan kishan","prise":"15.25 cr.","img":"ishan"],["Name":"Tilak verma","prise":"8 cr.","img":"tilak"],["Name":"Suryakumar yadav","prise":"14.50 cr.","img":"surya"],]
    @IBOutlet var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let data = player[indexPath.row]
        cell.lbl1.text = data["Name"]
        cell.Lbl2.text = data["prise"]
        cell.img.image = UIImage(named: data["img"]!)
        return cell
    }
    
    


}

