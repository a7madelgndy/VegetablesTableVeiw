//
//  VegetablesViewController.swift
//  VegetablesTableVeiw
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class VegetablesViewController: UIViewController {

    //MARK: outlets
    @IBOutlet var vegetablesTableView: UITableView!
    
    //MARK: Properties
    var vegetables:[Vegetable] = []

    //MARK: lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
    }

}

extension VegetablesViewController {
    private func configureUi(){
        vegetables = [Vegetable(name: "The tomato is the edible..", photo: "tomato.jpg", oldPrice: "200 EG", farmName: "EG farm", NewPrice: "100 Eg")]
        configureTableView(with: vegetablesTableView)
    }
    private func configureTableView(with table: UITableView){
        table.register(UINib(nibName: "VegetablesTableViewCell", bundle: nil), forCellReuseIdentifier: "VegetablesCellId")
        table.delegate = self
        table.dataSource = self
    }
}

extension VegetablesViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vegetables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VegetablesCellId", for: indexPath) as? VegetablesTableViewCell
        let vegetable = vegetables[indexPath.row]
        cell?.configure(with: vegetable)
        return cell ?? VegetablesTableViewCell()
    }
    
}
extension VegetablesViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
}

