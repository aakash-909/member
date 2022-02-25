//
//  SecondViewController.swift
//  tableviewdictionaryxib
//
//  Created by Dr.Mac on 24/02/22.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var player1 = [["Name":"Rohit sharma","prise":"16 cr.","img":"rohit"],["Name":"Jasprit bumrah","prise":"10 cr.","img":"bumrah"],["Name":"jofra archer","prise":"14 cr","img":"jofra"],["Name":"kieron pollard","prise":"7 cr.","img":"pollard"],["Name":"Ishan kishan","prise":"15.25 cr.","img":"ishan"],["Name":"Tilak verma","prise":"8 cr.","img":"tilak"],["Name":"Suryakumar yadav","prise":"14.50 cr.","img":"surya"],]
    
    
    @IBOutlet var secondTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTable.register(UINib(nibName: "TableViewCell1", bundle: nil),
                             forCellReuseIdentifier: "cell1")

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = secondTable.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell1
        let data = player1[indexPath.row]
        cell1.lblA.text = data["Name"]
        cell1.lblB.text = data["prise"]
        cell1.img1.image = UIImage(named: data["img"]!)
        
        return cell1
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
