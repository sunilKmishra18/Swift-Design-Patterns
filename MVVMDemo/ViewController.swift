//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Sunil Mishra on 02/06/21.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource {
    
    private var models = [Person]()
    
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(MVVMDemo.PersonTableViewCell.self, forCellReuseIdentifier: MVVMDemo.PersonTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configuredModels()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame=view.bounds
        
    }
    
    private func configuredModels(){
        let names = [
            "Test1","Test2","Test3","Test4"
        ]
        
        for name in names {
            models.append(Person(name:name))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MVVMDemo.PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: PersonTableCellViewModel(with: model))
        cell.delegate=self
        
        return cell
    }
}

extension ViewController: PersonTableViewCellDelegate{
    func PersonTableViewCell(cell: PersonTableViewCell, didTapWith viewModel: PersonTableCellViewModel) {
        
    }
    
    
}

